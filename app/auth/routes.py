from flask import request, session, redirect, render_template, url_for

import app.auth.utils as utils
from app.database import get_db
from . import auth_bp


@auth_bp.route("/login", methods=["GET", "POST"])
def login():
    db = get_db()
    if request.method == "POST":
        username = request.form.get("username")
        password = request.form.get("password")
        cursor = db.get_connection().cursor()
        try:
            user = utils.find_user_by_username(cursor, username)
            if user and user['password'] == password:
                session["user"] = user
                return redirect(url_for("queries.dashboard"))
            return render_template("login.html", error="Invalid username or password")
        except Exception as e:
            print(e)
            return render_template("login.html", error="Database error occurred")
        finally:
            cursor.close()

    return render_template("login.html")


@auth_bp.route("/logout", methods=["GET"])
def logout():
    session.pop("user", None)
    return redirect(url_for("auth.login"))
