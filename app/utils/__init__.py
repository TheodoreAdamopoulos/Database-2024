import functools
from flask import session, request, redirect, url_for


def login_required(func):
    @functools.wraps(func)
    def secure_function(*args, **kwargs):
        if "id" not in session:
            return redirect(url_for("account.login", next=request.url))
        return func(*args, **kwargs)

    return secure_function
