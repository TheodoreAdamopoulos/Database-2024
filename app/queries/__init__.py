from flask import Blueprint

queries_bp = Blueprint("queries", import_name=__name__)

from . import routes
