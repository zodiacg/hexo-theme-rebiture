{% set current = date(Date.now(), "YYYY") %}
<div class="wrap">
    <div class="inner" style="text-align: center">
        &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
        {{ current }} &nbsp; {{config.author}} All Rights Reserved
        / <a href="https://github.com/zodiacg/hexo-theme-rebiture">rebiture</a> for <a href="http://zespia.tw/hexo/">hexo</a>
        / designed by <a href="http://kywk.github.io/moco/">MooCow (kywk)</a>
        / coded by <a href="http://zodiacg.net/">ZodiacG</a>.
    </div>
</div>
