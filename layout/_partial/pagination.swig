<div class="pure-g-r bitpager">
  <div class="pure-u-1-12"></div>
  <div class="pure-u-1-4">
    {% if page.prev %}
    <a href="{{ url_for(page.prev_link) }}">&larr; {{ __('prev') }}</a>
    {% endif %}
  </div>
  <div class="pure-u-5-12"></div>
  <div class="pure-u-1-4">
    {% if page.prev %}
    <a href="{{ url_for(page.next_link) }}" class="pull-right">{{ __('next') }} &rarr;</a>
    {% endif %}
  </div>
</div>

