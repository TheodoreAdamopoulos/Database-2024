import psycopg2.extensions
import psycopg2.pool

from app.app_config import Config


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

    def get_connection(self) -> psycopg2.extensions.connection:
        return self._pool.getconn()

    def release_connection(self, conn) -> None:
        self._pool.putconn(conn)

    def close_all_connections(self):
        self._pool.closeall()
