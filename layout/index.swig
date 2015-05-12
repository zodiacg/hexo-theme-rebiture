{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}

{% block title %} {{ config.title }} {% endblock %}

{% block content %}
    {% for post in page.posts %}
{{ post_template.render(post,true) }}
    {% endfor %}
    {% include '_partial/pagination.swig' %}
{% endblock %}

{% block comment_script %}
{% if config.duoshuo_shortname %}
{% include '_script/comments/duoshuo.swig' %}
{% elseif config.disqus_shortname %}
{% include '_script/comments/disqus.swig' %}
{% endif %}
{% endblock %}

