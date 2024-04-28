from flask import request, session, redirect, render_template, url_for, Blueprint

from app.db import get_db
from app.utils import login_required
from app.account.data_access import *

account_bp = Blueprint("account", import_name=__name__)


@account_bp.route("/login", methods=["GET", "POST"])
def login():
    db = get_db()
    conn = db.get_connection()
    cur = conn.cursor()
    if request.method == "POST":
        username = request.form.get("username")
        password = request.form.get("password")
        account = find_account_by_username(cur, username)
        try:
            if account and account["password"] == password:
                session["id"] = account["id"]
                session["username"] = account["username"]
                return redirect(url_for("queries.dashboard"))
            return render_template("login.html", error="Invalid username or password")
        except Exception as e:
            print(e)
            if conn:
                conn.close()
            return render_template("login.html", error="Database error occurred")
        finally:
            if conn:
                conn.close()

    return render_template("login.html")


@account_bp.route("/logout", methods=["GET"])
def logout():
    session.pop("id", None)
    session.pop("username", None)
    return redirect(url_for("account.login"))


@account_bp.route("/credentials", methods=["GET", "POST"])
@login_required
def credentials():
    current_id = session["id"]
    db = get_db()
    conn = db.get_connection()
    cur = conn.cursor()
    try:
        if request.method == "POST":
            username = request.form.get("username")
            password = request.form.get("password")
            update_account(cur, current_id, username, password)
            conn.commit()
            session["username"] = username
            return redirect(url_for("account.credentials"))
        account = find_account_by_id(cur, current_id)
        return render_template("credentials.html", account=account)
    except Exception as e:
        print(e)
        if conn:
            conn.rollback()
            conn.close()
        return render_template("login.html", error="An error occurred")
    finally:
        if conn:
            conn.close()
