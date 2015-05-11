{% if theme.rss === '' and config.feed and config.feed.path %}
    {% set theme.rss = config.root + config.feed.path %}
{% endif %}
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
{% if theme.google_site_verification %}
<meta name="google-site-verification" content="{{ theme.google_site_verification }}" />
{% endif %}

{% if theme.favicon %}
<link rel="shortcut icon" href="{{ url_for(theme.favicon) }}" type="image/x-icon" />
{% endif %}

{% if config.description %}
<meta name="description" content="{{config.description}}" />
{% endif %}

{% if page.tags and page.tags.length %}
<meta name="keywords" content="{% for tag in page.tags %}{{ tag.name }},{% endfor %}" />
{% elif theme.keywords %}
<meta name="keywords" content="{{ theme.keywords }}" />
{% endif %}

{% if theme.rss %}
<link rel="alternate" href="{{ url_for(theme.rss) }}" title="{{ config.title}}" type="application/atom+xml" />
{% endif %}

{% if theme.fancybox %}
<link rel="stylesheet" href="{{ url_for("vendors") }}/fancybox/jquery.fancybox.css?v=2.1.5" type="text/css" />
{% endif %}
<link rel="stylesheet" href="{{ url_for("vendors") }}/pure-min.css" type="text/css" />
<link rel="stylesheet" href="{{ url_for("css") }}/biture.css" type="text/css" />
<link rel="stylesheet" href="http://cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" type="text/css" />
<!--[if lt IE 9]><script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->
