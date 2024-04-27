import functools

from flask import session, redirect, url_for, request


def login_required(func):
    @functools.wraps(func)
    def secure_function(*args, **kwargs):
        if "user" not in session:
            return redirect(url_for("auth.login", next=request.url))
        return func(*args, **kwargs)

    return secure_function
