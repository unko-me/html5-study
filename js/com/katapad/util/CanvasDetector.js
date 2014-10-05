(function() {
  var CanvasDetector;

  CanvasDetector = (function() {
    function CanvasDetector() {}

    CanvasDetector.canWebGL = function() {
      var error;
      try {
        return !!window.WebGLRenderingContext && !!document.createElement('canvas').getContext('experimental-webgl');
      } catch (_error) {
        error = _error;
        return false;
      }
    };

    return CanvasDetector;

  })();

  if (typeof define === "function" && define.amd) {
    define(function() {
      return CanvasDetector;
    });
  } else if (typeof exports === "object") {
    exports.CanvasDetector = CanvasDetector;
  } else {
    window.CanvasDetector = CanvasDetector;
  }

}).call(this);
