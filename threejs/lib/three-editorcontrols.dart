@JS()
library three_editorcontrols;

import "package:js/js.dart";
import "three.dart";
import "dart:html";

/// Type definitions for three.js (EditorControls.js)
/// Project: https://github.com/mrdoob/three.js/blob/master/examples/js/controls/EditorControls.js
/// Definitions by: Qinsi ZHU <https://github.com/qszhusightp>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// <reference path="./three.d.ts" />

// Module THREE
@JS("THREE.EditorControls")
class EditorControls extends EventDispatcher {
  // @Ignore
  EditorControls.fakeConstructor$() : super.fakeConstructor$();
  external factory EditorControls(Camera object, [HtmlElement domElement]);
  external bool get enabled;
  external set enabled(bool v);
  external Vector3 get center;
  external set center(Vector3 v);
  external void focus(Object3D target, bool frame);
  external void pan(Vector3 delta);
  external void zoom(Vector3 delta);
  external void rotate(Vector3 delta);
  external void dispose();
}
// End module THREE
