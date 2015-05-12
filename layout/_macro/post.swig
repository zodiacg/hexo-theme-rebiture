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
                {% else %}
                {{ post.content }}
                {% endif %}
            </div>
            <footer>{% if is_index %}
            {% if post.excerpt %}
            <div class="pull-left"><a href="{{ url_for(post.path) }}"><i class="fa fa-chevron-right"></i>{{ theme.excerpt_link }}</a></div>
            {% endif %}
            <div class="pull-right">
                {% if post.comments %}
                {% if config.duoshuo_shortname %}
                <span><a href="{{ url_for(post.path) }}#comments" >
                    <span class="article-comment-count ds-thread-count" data-thread-key="{{ post.path }}"></span>
                </a></span>
                {% elseif config.disqus_shortname %}
                <span><a href="{{ url_for(post.path) }}#comments" >
                    <span class="article-comment-count disqus-comment-count" data-disqus-identifier="{{ post.path }}"></span>
                </a></span>
                {% endif %}
                {% endif %}
            </div>
            {% else %}
            <div class="article-comment">
                {% if post.comments %}
                <h1 class="title">Comments</h1>
                {% if config.duoshuo_shortname %}
                <div class="ds-thread" data-thread-key="{{ post.path }}" data-title="{{ post.title }}" data-url="{{
                    post.permalink }}"></div>
                {% elseif config.disqus_shortname %}
                <div id="disqus_thread">
                    <noscript>Please enable JavaScript to view the <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                </div>
                {% endif %}
                {% endif %}
            </div>
            {% endif %}
            </footer>
        </div>
    </div>
</article>

{% endmacro %}
