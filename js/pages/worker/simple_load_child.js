(function() {
  console.log('[child] first');

  postMessage({
    type: 'first'
  });

  addEventListener('message', function(e) {
    var data;
    data = e.data;
    return console.log('[child] type', data.type);
  });

  console.log('[child] eof');

  postMessage({
    type: 'eof'
  });

}).call(this);
