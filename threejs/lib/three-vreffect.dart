@JS()
library three_vreffect;

import "package:js/js.dart";
import "three.dart";

/// Type definitions for three.js (VREffect.js)
/// Project: https://github.com/mrdoob/three.js/blob/master/examples/js/effects/VREffect.js
/// Definitions by: Toshiya Nakakura <https://github.com/nakakura>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// <reference path="./three.d.ts" />

// Module THREE
@JS("THREE.VREffect")
class VREffect {
  // @Ignore
  VREffect.fakeConstructor$();
  external factory VREffect(Renderer renderer, [void callback(String params)]);
  external void render(Scene scene, Camera camera);
  external void setSize(num width, num height);
  external void setFullScreen(bool flag);
  external void startFullscreen();
  external VREffectOffset FovToNDCScaleOffset(VRFov fov);
  external Matrix4 FovPortToProjection(
      VRFov fov, bool rightHanded, num zNear, num zFar);
  external Matrix4 FovToProjection(
      VRFov fov, bool rightHanded, num zNear, num zFar);
}

@anonymous
@JS()
abstract class VRFov {
  external num get leftTan;
  external set leftTan(num v);
  external num get rightTan;
  external set rightTan(num v);
  external num get upTan;
  external set upTan(num v);
  external num get downTan;
  external set downTan(num v);
  external factory VRFov({num leftTan, num rightTan, num upTan, num downTan});
}

@anonymous
@JS()
abstract class VREffectOffset {
  external num get scale;
  external set scale(num v);
  external num get offset;
  external set offset(num v);
  external factory VREffectOffset({num scale, num offset});
}
// End module THREE
