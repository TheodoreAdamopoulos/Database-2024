from flask import Blueprint, render_template
from app.utils import login_required

queries_bp = Blueprint("queries", import_name=__name__)


@queries_bp.route("/dashboard", methods=["GET"])
@login_required
def dashboard():
    return render_template("dashboard.html")
