{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}

{% block title %} {{ page.title }} | {{ config.title }} {% endblock %}

{% block content %}
{{ post_template.render(page,false) }}
{% endblock %}

{% block comment_script %}
{% if config.duoshuo_shortname %}
{% include '_script/comments/duoshuo.swig' %}
{% elseif config.disqus_shortname %}
{% include '_script/comments/disqus.swig' %}
{% endif %}
{% endblock %}
