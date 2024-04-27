from . import admin_bp


@admin_bp.route('/backup', methods=['POST'])
def backup(): pass


@admin_bp.route('/restore', methods=['POST'])
def restore(): pass
