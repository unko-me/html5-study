(function() {
  this.onmessage = function(event) {
    var count, load, urls, val, _i, _len;
    urls = event.data;
    count = 0;
    load = function(url) {
      var xhr;
      xhr = new XMLHttpRequest();
      xhr.onreadystatechange = function() {
        var e;
        try {
          if (xhr.readyState === 4) {
            count++;
            if (count < urls.length) {
              postMessage("next");
            } else {
              postMessage("end");
            }
          }
        } catch (_error) {
          e = _error;
        }
      };
      xhr.open("GET", url, false);
      xhr.send(null);
    };
    for (_i = 0, _len = urls.length; _i < _len; _i++) {
      val = urls[_i];
      load(val);
    }
  };

}).call(this);
