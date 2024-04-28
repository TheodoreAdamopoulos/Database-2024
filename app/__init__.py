from flask import Flask, redirect, url_for, session, request
from app.app_config import Config
from app.account import account_bp
from app.db import init_app
from app.queries import queries_bp

app = Flask(__name__, static_folder="static", template_folder="templates")
app.config.from_object(Config)

init_app(app)

app.register_blueprint(account_bp)
app.register_blueprint(queries_bp)


@app.context_processor
def inject_username():
    username = None
    if "id" in session:
        username = session["username"]
    return dict(username=username)


@app.route("/", methods=["GET"])
def index():
    return redirect(url_for("queries.dashboard"))
