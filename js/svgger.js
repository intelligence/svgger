// Generated by CoffeeScript 1.3.3
(function() {

  $(function() {
    var $targets;
    $targets = $('img[src$="svg"]');
    return $targets.each(function() {
      var img_class, img_id,
        _this = this;
      img_id = this.id;
      img_class = $(this).attr('class');
      return $.get(this.src, function(data) {
        var $d;
        $d = $(data).find('svg');
        if ((img_id != null) && !!img_id) {
          $d.attr('id', img_id);
        }
        if ((img_class != null) && !!img_class) {
          $d.attr('class', img_class);
        }
        return $(_this).replaceWith($d);
      });
    });
  });

}).call(this);