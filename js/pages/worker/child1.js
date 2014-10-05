(function() {
  console.log('[child] 1行目です。非同期になってます');

  addEventListener('message', function(e) {
    var diff;
    diff = Date.now() - e.data.startTime;
    console.log('[child1] on message 受け取り時間', "" + diff + "ms");
    return postMessage({
      type: 'getlargedata'
    });
  });

  postMessage({
    type: 'init',
    hoge: 'fuga',
    time: Date.now()
  });

}).call(this);
