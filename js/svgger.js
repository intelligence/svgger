// Generated by CoffeeScript 1.6.1
(function() {

  $(function() {
    var $targets;
    $targets = $('img[src$="svg"]').hide();
    return $targets.each(function(i, item) {
      var _this = this;
      console.time('svg' + (i + 1));
      $.get(this.src).success(function(data) {
        var $svg, a, ignore, nName, nValue, _attr, _i, _len;
        $svg = $(data).find('svg');
        _attr = _this.attributes;
        $.extend(_attr, $svg[0].attributes);
        ignore = ['src', 'style'];
        for (_i = 0, _len = _attr.length; _i < _len; _i++) {
          a = _attr[_i];
          nName = a.nodeName;
          nValue = a.nodeValue;
          if (!$.inArray(nName, ignore)) {
            $svg.attr(nName, nValue);
          }
        }
        return $(_this).replaceWith($svg);
      });
      return console.timeEnd('svg' + (i + 1));
    });
  });

}).call(this);
