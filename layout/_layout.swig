<!DOCTYPE html>
<html>
<head>
    {% include '_partial/head.swig' %}
    <title>{% block title %}{% endblock %}</title>
</head>
<body>
    <header id="header">
        {% include '_partial/header.swig' %}
    </header>
    <div id="main-content" class="wrap">
        <div class="inner">
            {% block content %}{% endblock %}
        </div>
    </div>
    <footer id="footer">
        {% include '_partial/footer.swig' %}
    </footer>
    {% include '_partial/after_all.swig' %}
    {% block comment_script %}{% endblock %}
</body>
</html>
