(function(){var e;e=function(){function e(){}return e.prototype.start=function(){var e;return window.Worker?(console.log("[WorkerTest1] worker\u3042\u308a\u307e\u3059\u3002worker\u306ejs\u3092\u8aad\u307f\u8fbc\u307f\u307e\u3059\u3002"),console.log("[WorkerTest1] \u8aad\u307f\u8fbc\u307f\u958b\u59cb1"),console.time("new"),console.time("new1"),e=new Worker("../../js/pages/worker/child1.js"),console.timeEnd("new1"),console.log("[WorkerTest1] \u8aad\u307f\u8fbc\u307f\u958b\u59cb2"),e.addEventListener("message",function(o){return function(t){var n,r,a;return"init"!==event.data.type?(console.timeEnd("\u30c7\u30fc\u30bf\u306e\u53d7\u3051\u6e21\u3057"),console.log("@largeData.length",o.largeData.length)):(console.timeEnd("new"),console.log("[WorkerTest1] \u547c\u3093\u3060\uff1f",t),r=new Uint8Array(32e6),o.largeData=r,console.log("@largeData.length",o.largeData.length),a=Date.now(),console.log(a,""+(a-t.data.time)+"ms"),n={test:1},n.large=r,n.startTime=a,console.time("\u30c7\u30fc\u30bf\u306e\u53d7\u3051\u6e21\u3057"),e.postMessage(n),void 0)}}(this))):void alert("WebWorker\u306a\u3044\u3067\u3059\uff01")},e}(),(new e).start()}).call(this);