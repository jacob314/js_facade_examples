@JS()
library three_maskpass;

import "package:js/js.dart";
import "three.dart";

/// Type definitions for three.js (MaskPass.js)
/// Project: https://github.com/mrdoob/three.js/blob/r68/examples/js/postprocessing/MaskPass.js
/// Definitions by: Satoru Kimura <https://github.com/gyohk>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// <reference path="./three.d.ts" />

// Module THREE
@JS("THREE.MaskPass")
class MaskPass {
  // @Ignore
  MaskPass.fakeConstructor$();
  external factory MaskPass(Scene scene, Camera camera);
  external Scene get scene;
  external set scene(Scene v);
  external Camera get camera;
  external set camera(Camera v);
  external bool get enabled;
  external set enabled(bool v);
  external bool get clear;
  external set clear(bool v);
  external bool get needsSwap;
  external set needsSwap(bool v);
  external bool get inverse;
  external set inverse(bool v);
  external void render(WebGLRenderer renderer, WebGLRenderTarget writeBuffer,
      WebGLRenderTarget readBuffer, num delta);
}

@JS("THREE.ClearMaskPass")
class ClearMaskPass {
  // @Ignore
  ClearMaskPass.fakeConstructor$();
  external factory ClearMaskPass();
  external bool get enabled;
  external set enabled(bool v);
  external void render(WebGLRenderer renderer, WebGLRenderTarget writeBuffer,
      WebGLRenderTarget readBuffer, num delta);
}
// End module THREE
