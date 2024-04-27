from flask import Flask, redirect, url_for

from app.app_config import Config
from app.auth import auth_bp
from app.database import init_app
from app.queries import queries_bp

app = Flask(__name__, static_folder="static", template_folder="templates")
app.config.from_object(Config)

init_app(app)

app.register_blueprint(auth_bp)
app.register_blueprint(queries_bp)


@app.route("/", methods=["GET"])
def index():
    return redirect(url_for("queries.dashboard"))
