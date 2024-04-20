from flask import request, session, redirect, render_template, url_for
from . import queries_bp
from app.database import get_db, Query


@queries_bp.route("/dashboard", methods=["GET"])
def dashboard():
    return render_template("dashboard.html")
