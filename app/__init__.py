from flask import Flask
from werkzeug.security import check_password_hash


from app.database import init_app
from app.app_config import Config
from app.auth import auth_bp
from app.queries import queries_bp

app = Flask(__name__, static_folder="static", template_folder="templates")
app.config.from_object(Config)

init_app(app)

app.register_blueprint(auth_bp)
app.register_blueprint(queries_bp)
