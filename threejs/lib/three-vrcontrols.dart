@JS()
library three_vrcontrols;

import "package:js/js.dart";
import "three.dart";

/// Type definitions for three.js (VRControls.js)
/// Project: https://github.com/mrdoob/three.js/blob/master/examples/js/controls/VRControls.js
/// Definitions by: Toshiya Nakakura <https://github.com/nakakura>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// <reference path="./three.d.ts" />

// Module THREE
@JS("THREE.VRControls")
class VRControls {
  // @Ignore
  VRControls.fakeConstructor$();
  external factory VRControls(Camera camera, [void callback(String param)]);

  /// Update VR Instance Tracking
  external void update();
  external void zeroSensor();
  external num get scale;
  external set scale(num v);
}
// End module THREE
