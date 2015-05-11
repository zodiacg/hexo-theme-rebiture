<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js" type="text/javascript" charset="utf-8"></script>

<!-- Responsive menu -->
<script>
$(document).ready(function() {
  $("#menu-toggle").click(function(event) {
    event.preventDefault();
    if ($(this).hasClass("isShow")) {
      $("#header").css({position: "fixed"});
      $("ul.nav-menu").hide();
      $(this).removeClass("isShow");
    } else {
      $("#header").css({position: "static"});
      $("ul.nav-menu").show();
      $("html, body").scrollTop(0);
      $(this).addClass("isShow");
    }
    return false;
  });

  $(window).resize(function() {
    if ($(window).width() > 700) {
      $("ul.nav-menu").removeAttr('style');
    }
  });

});
</script>

{% if theme.fancybox %}
<link rel="stylesheet" href="{{ url_for("vendors") }}/fancybox/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
<script type="text/javascript" src="{{ url_for("vendors") }}/fancybox/jquery.fancybox.pack.js?v=2.1.5"></script>
<script type="text/javascript">
(function($){
  $(".fancybox").fancybox();
  $(".various").fancybox({
    maxWidth  : 800,
    maxHeight : 600,
    fitToView : false,
    width   : '70%',
    height    : '70%',
    autoSize  : true,
    closeClick  : false,
    openEffect  : 'none',
    closeEffect : 'none'
  });
})(jQuery);
</script>
{% endif %}
