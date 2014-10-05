(function() {
  var SimpleLoad;

  SimpleLoad = (function() {
    function SimpleLoad(args) {}

    SimpleLoad.prototype.start = function() {
      var worker;
      console.log('[parent] start');
      worker = new Worker("../../js/pages/worker/simple_load_child.js");
      console.log('[parent] addEventListener');
      worker.addEventListener('message', function(e) {
        console.log('[parent]', e.data.type);
        return worker.postMessage({
          type: 'receive'
        });
      });
      console.log('[parent] before postMessage("init")');
      worker.postMessage({
        type: 'init'
      });
      return console.log('[parent] after postMessage("init")');
    };

    return SimpleLoad;

  })();

  new SimpleLoad().start();

}).call(this);
