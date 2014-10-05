(function() {
  var WorkerTest1;

  WorkerTest1 = (function() {
    function WorkerTest1(args) {}

    WorkerTest1.prototype.start = function() {
      var worker;
      if (!window.Worker) {
        alert('WebWorkerないです！');
        return;
      }
      console.log('[WorkerTest1] 読み込み開始1');
      console.time('new');
      console.time('new1');
      worker = new Worker("../../js/pages/worker/child1.js");
      console.timeEnd('new1');
      console.log('[WorkerTest1] 読み込み開始2');
      worker.postMessage({
        type: 'init'
      });
      return worker.addEventListener('message', (function(_this) {
        return function(e) {
          var data, largeData, now;
          if (event.data.type === 'init') {
            console.timeEnd('new');
            console.log('[WorkerTest1] 呼んだ？', e);
            largeData = new Uint8Array(32 * 1000 * 1000);
            _this.largeData = largeData;
            console.log('@largeData.length', _this.largeData.length);
            now = Date.now();
            console.log(now, "" + (now - e.data.time) + "ms");
            data = {
              test: 1
            };
            data.large = largeData;
            data.startTime = now;
            console.time('データの受け渡し');
            worker.postMessage(data);
          } else {
            console.timeEnd('データの受け渡し');
            return console.log('@largeData.length', _this.largeData.length);
          }
        };
      })(this));
    };

    return WorkerTest1;

  })();

  new WorkerTest1().start();

}).call(this);
