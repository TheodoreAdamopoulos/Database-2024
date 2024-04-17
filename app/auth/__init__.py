from flask import Blueprint

auth_bp = Blueprint("auth", import_name=__name__)

from . import routes
