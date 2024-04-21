from typing import List, Tuple, Union, Any

import psycopg2.pool
from flask import current_app, Flask

from app.app_config import Config


class Query:
    def __init__(self, sql: str, params: Union[None, Tuple[Any, ...]]) -> None:
        self.sql = sql
        self.params = params


class Database:
    def __init__(self) -> None:
        self._pool = self._create_connection_pool()

    @staticmethod
    def _create_connection_pool():
        return psycopg2.pool.SimpleConnectionPool(
            minconn=2,
            maxconn=10,
            database=Config.DBNAME,
            user=Config.USER,
            password=Config.PASSWORD,
            host=Config.HOST,
            port=Config.PORT,
        )

    def get_connection(self):
        return self._pool.getconn()

    def release_connection(self, conn) -> None:
        self._pool.putconn(conn)

    def execute_one(self, query: Query) -> None:
        conn: psycopg2._T_conn = self.get_connection()
        cursor = conn.cursor()
        try:
            cursor.execute(query.sql, query.params)
            conn.commit()
        except Exception as e:
            conn.rollback()
            print(f"Error: {e}")
        finally:
            cursor.close()
            self.release_connection(conn)

    def close_all_connections(self):
        self._pool.closeall()

    def execute_many(self, queries: List[Query]) -> None:
        conn: psycopg2._T_conn = self.get_connection()
        cursor = conn.cursor()
        try:
            for query in queries:
                cursor.execute(query.sql, query.params)
            conn.commit()
            print("Queries executed successfully!")
        except Exception as e:
            conn.rollback()
            print(f"Error executing queries: {e}")
        finally:
            cursor.close()
            self.release_connection(conn)

    def fetch_all(self, query: Query) -> List[dict]:
        conn: psycopg2._T_conn = self.get_connection()
        cursor = conn.cursor()
        try:
            cursor.execute(query.sql, query.params)
            columns = [desc[0] for desc in cursor.description]
            return [dict(zip(columns, row)) for row in cursor.fetchall()]
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cursor.close()
            self.release_connection(conn)

    def fetch_one(self, query: Query) -> Union[dict, None]:
        conn: psycopg2._T_conn = self.get_connection()
        cursor = conn.cursor()
        try:
            cursor.execute(query.sql, query.params)
            columns = [desc[0] for desc in cursor.description]
            result = cursor.fetchone()
            return dict(zip(columns, result)) if result else None
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cursor.close()
            self.release_connection(conn)


def get_db() -> Database:
    if "db" not in current_app.config:
        current_app.config["db"] = Database()
    return current_app.config["db"]


def close_db(e=None) -> None:
    db: Database = current_app.config.pop("db", None)
    if db is not None:
        db.close_all_connections()


def init_app(app: Flask) -> None:
    app.teardown_appcontext(close_db)
