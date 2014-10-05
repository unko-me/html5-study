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
(function() {
  var WorkerTest2;

  WorkerTest2 = (function() {
    function WorkerTest2() {
      var i;
      console.log('[WorkerTest2]');
      this._list = (function() {
        var _i, _results;
        _results = [];
        for (i = _i = 0; _i < 180; i = ++_i) {
          _results.push(i = '../../../img/worker/dmy/' + i + '.png');
        }
        return _results;
      })();
      $('.testRectangle').velocity({
        'rotateZ': "360deg"
      }, {
        duration: 2000,
        loop: true
      });
      $('#testButton1').click((function(_this) {
        return function() {
          return _.each(_this._list, function(url) {
            var xhr;
            xhr = new XMLHttpRequest();
            xhr.open("GET", url, false);
            xhr.onreadystatechange = (function(_this) {
              return function(data) {
                if (xhr.readyState === 4) {
                  return console.log('load complete');
                }
              };
            })(this);
            return xhr.send(null);
          });
        };
      })(this));
      $('#testButton2').click((function(_this) {
        return function() {
          var preloader;
          preloader = new Preloader();
          return preloader.start(_this._list);
        };
      })(this));
    }

    return WorkerTest2;

  })();

  new WorkerTest2();

}).call(this);
