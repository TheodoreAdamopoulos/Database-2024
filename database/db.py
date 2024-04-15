from typing import List, Tuple, Union, Any, Dict

from psycopg2 import pool


class Query:
    def __init__(self, sql: str, params: Union[None, Dict[str, Tuple[Any, ...]]]) -> None:
        self.sql = sql
        self.params = params


class Database:
    def __init__(self, database: str, user: str, password: str, host: str = 'localhost', port: int = 5432,
                 min_conn: int = 1, max_conn: int = 10):
        try:
            self._pool = pool.SimpleConnectionPool(
                minconn=min_conn,
                maxconn=max_conn,
                dbname=database,
                user=user,
                password=password,
                host=host,
                port=port
            )
        except Exception as e:
            print(f"Error: {e}")

    def get_connection(self):
        return self._pool.getconn()

    def put_connection(self, conn) -> None:
        self._pool.putconn(conn)

    def execute_one(self, query: Query) -> None:
        conn = self.get_connection()
        cursor = conn.cursor()
        try:
            cursor.execute(query.sql, query.params)
            conn.commit()
        except Exception as e:
            conn.rollback()
            print(f"Error: {e}")
        finally:
            cursor.close()
            self.put_connection(conn)

    def execute_many(self, queries: List[Query]) -> None:
        conn = self.get_connection()
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
            self.put_connection(conn)

    def fetch_all(self, query: Query) -> List[Tuple]:
        conn = self.get_connection()
        cursor = conn.cursor()
        try:
            cursor.execute(query.sql, query.params)
            return cursor.fetchall()
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cursor.close()
            self.put_connection(conn)

    def fetch_one(self, query: Query) -> Union[Tuple, None]:
        conn = self.get_connection()
        cursor = conn.cursor()
        try:
            cursor.execute(query.sql, query.params)
            return cursor.fetchone()
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cursor.close()
            self.put_connection(conn)
