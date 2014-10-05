(function() {
  var PathUtil;

  PathUtil = (function() {
    function PathUtil() {}


    /**
    @method パスを返す (github pageに上がってたら、/three-study/をつけて返す)
     */

    PathUtil.getImgPath = function(path) {
      if (location.hostname.indexOf('github.io') > -1) {
        return path = '/threejs-study' + path;
      }
    };

    return PathUtil;

  })();

  if (typeof define === "function" && define.amd) {
    define(function() {
      return PathUtil;
    });
  } else if (typeof exports === "object") {
    exports.PathUtil = PathUtil;
  } else {
    window.PathUtil = PathUtil;
  }

}).call(this);
