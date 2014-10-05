(function() {
  var Preloader,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  Preloader = (function() {
    Preloader.prototype.WORKER_CORE_JS = "../../js/pages/worker/worker_loader.js";

    Preloader.prototype.count = 0;

    function Preloader() {
      this.loadComplete = __bind(this.loadComplete, this);
      this.loadWithXHR = __bind(this.loadWithXHR, this);
      this.workerHandler = __bind(this.workerHandler, this);
      this.loadWithWorker = __bind(this.loadWithWorker, this);
      this.start = __bind(this.start, this);
      this.enableWorker = !!window.Worker;
      return;
    }

    Preloader.prototype.start = function(urls) {
      var val, _i, _len, _ref;
      this.urls = urls;
      this.total = this.urls.length;
      if (this.total !== 0) {
        if (this.enableWorker) {
          this.loadWithWorker(this.urls);
        } else {
          _ref = this.urls;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            val = _ref[_i];
            this.loadWithXHR(val);
          }
        }
      }
    };

    Preloader.prototype.loadWithWorker = function(urls) {
      this.worker = new Worker(this.WORKER_CORE_JS);
      this.worker.onmessage = this.workerHandler;
      this.worker.postMessage(this.urls);
    };

    Preloader.prototype.workerHandler = function(e) {
      switch (e.data) {
        case "end":
          this.worker.terminate();
          this.loadComplete();
          break;
        case "next":
          this.loadComplete();
      }
    };

    Preloader.prototype.loadWithXHR = function(url) {
      this.xhr = new XMLHttpRequest();
      this.xhr.open("GET", url, false);
      this.xhr.onreadystatechange = (function(_this) {
        return function(data) {
          if (_this.xhr.readyState === 4) {
            return _this.loadComplete();
          }
        };
      })(this);
      this.xhr.send(null);
    };

    Preloader.prototype.loadComplete = function() {
      this.count++;
      console.log('loadcomplete');
      if (this.count >= this.total) {
        console.log("全部読み込み終わった");
      }
    };

    return Preloader;

  })();

  if (typeof define === "function" && define.amd) {
    define(function() {
      return Preloader;
    });
  } else if (typeof exports === "object") {
    exports.Preloader = Preloader;
  } else {
    window.Preloader = Preloader;
  }

}).call(this);
