from flask import request, session, redirect, render_template, url_for
from . import auth_bp
from app.database import get_db, Query


@auth_bp.route("/", methods=["GET"])
def index():
    return redirect(url_for("auth.login"))


@auth_bp.route("/login", methods=["GET", "POST"])
def login():
    db = get_db()
    if request.method == "POST":
        username = request.form.get("username")
        password = request.form.get("password")
        query = Query("SELECT * FROM UserAccount WHERE username=%s", (username,))
        user = db.fetch_one(query)
        if user and user["password"] == password:
            session["user"] = user
            return redirect(url_for("queries.dashboard"))
        else:
            return render_template("login.html", error="Invalid username or password")
    return render_template("login.html")


@auth_bp.route("/logout", methods=["GET"])
def logout():
    session.pop("user", None)
    return redirect(url_for("auth.login"))
