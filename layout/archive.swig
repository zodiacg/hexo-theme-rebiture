{% extends '_layout.swig' %}
{% import '_macro/post-collapse.swig' as post_template %}

{% block title %} {{ "Archives" }} | {{ config.title }} {% endblock %}

{% block content %}
<div class="archive">
    {% for post in page.posts %}
    {{ post_template.render(post) }}
    {% endfor %}
</div>

{% include '_partial/pagination.swig' %}
{% endblock %}
