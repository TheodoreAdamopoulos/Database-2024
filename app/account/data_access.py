from typing import Optional, Dict, Union


def find_account_by_username(
    cur, username: str
) -> Optional[Dict[str, Union[str, int, bool]]]:
    query = """
    SELECT 
      *
    FROM 
      Account
    WHERE 
      username = %s
    """
    cur.execute(query, (username,))
    account = cur.fetchone()
    cols = [desc[0] for desc in cur.description]
    return dict(zip(cols, account)) if account else None


def find_account_by_id(cur, id: int) -> Optional[Dict[str, Union[str, int, bool]]]:
    query = """
    SELECT 
      *
    FROM 
      Account
    WHERE 
      id = %s
    """
    cur.execute(query, (id,))
    account = cur.fetchone()
    cols = [desc[0] for desc in cur.description]
    return dict(zip(cols, account)) if account else None


def update_account(cur, id: int, username: str, password: str) -> None:
    query = """
    UPDATE
      Account
    SET
      username = %s,
      password = %s
    WHERE
      id = %s
    """
    cur.execute(query, (username, password, id))
