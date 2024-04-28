from app.db.database import Database
from flask import current_app, Flask


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
