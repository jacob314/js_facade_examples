@JS()
library three_shaderpass;

import "package:js/js.dart";
import "three.dart";

/// Type definitions for three.js (ShaderPass.js)
/// Project: https://github.com/mrdoob/three.js/blob/r68/examples/js/postprocessing/ShaderPass.js
/// Definitions by: Satoru Kimura <https://github.com/gyohk>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// <reference path="./three.d.ts" />

// Module THREE
@JS("THREE.ShaderPass")
class ShaderPass {
  // @Ignore
  ShaderPass.fakeConstructor$();
  external factory ShaderPass(Shader shader, [String textureID]);
  external String get textureID;
  external set textureID(String v);
  external dynamic get uniforms;
  external set uniforms(dynamic v);
  external ShaderMaterial get material;
  external set material(ShaderMaterial v);
  external bool get renderToScreen;
  external set renderToScreen(bool v);
  external bool get enabled;
  external set enabled(bool v);
  external bool get needsSwap;
  external set needsSwap(bool v);
  external bool get clear;
  external set clear(bool v);
  external Camera get camera;
  external set camera(Camera v);
  external Scene get scene;
  external set scene(Scene v);
  external Mesh get quad;
  external set quad(Mesh v);
  external void render(WebGLRenderer renderer, WebGLRenderTarget writeBuffer,
      WebGLRenderTarget readBuffer, num delta);
}
// End module THREE
