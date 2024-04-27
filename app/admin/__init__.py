from flask import Blueprint

admin_bp = Blueprint("admin", import_name=__name__, url_prefix="admin")
from . import routes
