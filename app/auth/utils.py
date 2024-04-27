from typing import Union

import psycopg2.extensions


def find_user_by_username(cur: psycopg2.extensions.cursor, username: str) -> Union[dict, None]:
    cur.execute("SELECT * FROM UserAccount WHERE username=%s", (username,))
    columns = [desc[0] for desc in cur.description]
    result = cur.fetchone()
    return dict(zip(columns, result)) if result else None
