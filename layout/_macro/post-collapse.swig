{% macro render(post, is_index) %}
<article class="{{ post.layout }}">
    <div class="post-content">
        <header>
            <time datetime="{{ post.date | date('c') }}" >
                {{ post.date.format(config.date_format) }}
            </time>

            <h1 class="title-collapse">
            {% if post.link %}
            <a href="{{ post.link }}" target="_blank">{{ post.title or post.link }}</a>
            {% else %}
            <a href="{{ url_for(post.path) }}">{{ post.title }}</a>
            {% endif %}
            </h1>
        </header>
    </div>
</article>

{% endmacro %}
