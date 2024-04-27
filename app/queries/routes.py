from flask import render_template

from app.database import get_db
from app.decorators import login_required
from . import queries_bp


@queries_bp.route("/dashboard", methods=["GET"])
@login_required
def dashboard():
    db = get_db()
    cur = db.get_connection().cursor()
    return render_template("dashboard.html")
