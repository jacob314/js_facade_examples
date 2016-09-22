@JS()
library three_transformcontrols;

import "package:js/js.dart";
import "three.dart";
import "dart:html";

/// Type definitions for three.js (TransformControls.js)
/// Project: https://github.com/mrdoob/three.js/blob/master/examples/js/controls/TransformControls.js
/// Definitions by: Stefan Profanter <https://github.com/Pro>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// <reference path="./three.d.ts" />

// Module THREE
@JS("THREE.TransformControls")
class TransformControls extends Object3D {
  // @Ignore
  TransformControls.fakeConstructor$() : super.fakeConstructor$();
  external factory TransformControls(Camera object, [HtmlElement domElement]);
  external Object3D get object;
  external set object(Object3D v);
  external void update();
  external void detach();
  external void attach(Object3D object);
  external String getMode();
  external void setMode(String mode);
  external void setSnap(dynamic snap);
  external void setSize(num size);
  external void setSpace(String space);
}
// End module THREE
