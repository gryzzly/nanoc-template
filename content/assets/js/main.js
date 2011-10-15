(function(global, doc) {
  return global.UTIL = {
    fire: function(func, args) {
      if (func !== '' && typeof MR[func] === 'function') {
        return MR[func](args);
      }
    },
    load: function() {
      if ($('body').data('action')) {
        return $.each($('body').data('action').split(/\s+/), function(i, action) {
          return UTIL.fire(action);
        });
      }
    }
  };
})(window, document);