@JS()
library detector;

import "package:js/js.dart";
import "dart:html";

/// Type definitions for three.js (Detector.js)
/// Project: https://github.com/mrdoob/three.js/blob/master/examples/js/Detector.js
/// Definitions by: Satoru Kimura <https://github.com/gyohk>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
@anonymous
@JS()
abstract class DetectorStatic {
  external bool get canvas;
  external set canvas(bool v);
  external bool get webgl;
  external set webgl(bool v);
  external bool get workers;
  external set workers(bool v);
  external bool get fileapi;
  external set fileapi(bool v);
  external HtmlElement getWebGLErrorMessage();
  external void addGetWebGLMessage(
      [dynamic /*{id?: string; parent?: HTMLElement}*/ parameters]);
}

@JS()
external DetectorStatic get Detector;
@JS()
external set Detector(DetectorStatic v);
