{% macro render(post, is_index) %}
<article class="{{ post.layout }}">
    <div class="pure-g">
        <!-- article: meta -->
        <div class="pure-u-1-12 article-meta">
            <div class="date">
                <time datetime="{{ post.date | date('c') }}" >
                <div class="day">{{ post.date | date('j') }}</div>
                <div class="month">{{ post.date | date('M Y') }}</div>
                </time>
            </div>
            <div class="article-tags">
            {% if post.tags and post.tags.length %}
            {% for tag in post.tags %}
                <a href='{{ url_for(tag.path) }}' class='pure-button pull-right' style='margin:3px;'>{{ tag.name }}</a>
            {% endfor %} 
            {% endif %}
            </div>
        </div>

        <!-- article: main -->
        <div class="pure-u-11-12">
            <header><div class="article-title">
                <h1 class="title">
                {% if post.link %}
                <a href="{{ post.link }}" target="_blank">{{ post.title or post.link }}</a>
                {% else %}
                {% if is_index %}
                <a href="{{ url_for(post.path) }}">{{ post.title }}</a>
                {% else %}{{ post.title }}
                {% endif %}
                {% endif %}
                </h1>
            </div></header>
            <div class="article-entry">
                {% if post.excerpt and is_index %}
                {{ post.excerpt }}
                <a href="{{ url_for(post.path) }}">{{ theme.excerpt_link }}</a>
                {% else %}
                {{ post.content }}
                {% endif %}
            </div>
            <footer><div class="article-comment">
                A sample comment
            </div></footer>
        </div>
    </div>
</article>

{% endmacro %}
