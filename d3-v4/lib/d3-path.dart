@JS("d3")
library d3_path;

import "package:js/js.dart";

/// Type definitions for D3JS d3-path module v1.0.1
/// Project: https://github.com/d3/d3-path/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
@anonymous
@JS()
abstract class Path {
  external void moveTo(num x, num y);
  external void closePath();
  external void lineTo(num x, num y);
  external void quadraticCurveTo(num cpx, num cpy, num x, num y);
  external void bezierCurveTo(
      num cpx1, num cpy1, num cpx2, num cpy2, num x, num y);
  external void arcTo(num x1, num y1, num x2, num y2, num radius);
  external void arc(num x, num y, num radius, num startAngle, num endAngle,
      [bool anticlockwise]);
  external void rect(num x, num y, num w, num h);
  external String toString();
}

@JS()
external Path path();
