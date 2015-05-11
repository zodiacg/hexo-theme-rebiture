<div class="wrap">
    <div class="inner">
        <a class="brand" href="{{ url_for(config.root) }}">{{ config.title }}</a>
        <a id="menu-toggle" href="#"><i class="fa fa-bars"></i></a>
        <ul class="nav-menu">
        {% for item, val in theme.menu %}
          {% if Object.prototype.toString.call(val) === '[object Object]' %}
            <li><a href="#">{{ item }}</a>
            <ul class="sub-menu">
            {% for subitem, subval in theme.menu[item] %}
                <li><a href="{{ subval }}">{{ subitem }}</a></li>
            {% endfor %}
            </ul>
          {% else %}
            <li><a href="{{ val }}">{{ item }}</a></li>
          {% endif %}
        {% endfor %}
        </ul>

        <ul class="nav-menu ext-menu">
        {% for item, val in theme.extmenu %}
          {% if Object.prototype.toString.call(val) === '[object Object]' %}
            <li><a href="#">{{ item }}</a>
            <ul class="sub-menu">
            {% for subitem, subval in theme.extmenu[item] %}
                <li><a href="{{ subval }}">{{ subitem }}</a></li>
            {% endfor %}
            </ul>
          {% else %}
            <li><a href="{{ val }}">{{ item }}</a></li>
          {% endif %}
        {% endfor %}
            <li><a class="various" href="#fbox-tagcloud">tags</a></li>
        </ul>
    </div>
</div>

<div class="tagcloud" id="fbox-tagcloud" style="margin:10px; display:none; overflow: hidden">
    {{ tagcloud(site.tags, { "min_font": 12, "max_font": 24, "amount": 80, }) }}
</div>
