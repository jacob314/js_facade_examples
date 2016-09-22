@JS()
library three_renderpass;

import "package:js/js.dart";
import "three.dart";

/// Type definitions for three.js (RenderPass.js)
/// Project: https://github.com/mrdoob/three.js/blob/r68/examples/js/postprocessing/RenderPass.js
/// Definitions by: Satoru Kimura <https://github.com/gyohk>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// <reference path="./three.d.ts" />

// Module THREE
@JS("THREE.RenderPass")
class RenderPass {
  // @Ignore
  RenderPass.fakeConstructor$();
  /*external factory RenderPass(Scene scene, Camera camera, [Material overrideMaterial, Color clearColor, num clearAlpha]);*/
  /*external factory RenderPass(Scene scene, Camera camera, [Material overrideMaterial, String clearColor, num clearAlpha]);*/
  /*external factory RenderPass(Scene scene, Camera camera, [Material overrideMaterial, num clearColor, num clearAlpha]);*/
  external factory RenderPass(Scene scene, Camera camera,
      [Material overrideMaterial,
      dynamic /*Color|String|num*/ clearColor,
      num clearAlpha]);
  external Scene get scene;
  external set scene(Scene v);
  external Camera get camera;
  external set camera(Camera v);
  external Material get overrideMaterial;
  external set overrideMaterial(Material v);
  external dynamic get clearColor;
  external set clearColor(dynamic v);
  external num get clearAlpha;
  external set clearAlpha(num v);
  external Color get oldClearColor;
  external set oldClearColor(Color v);
  external num get oldClearAlpha;
  external set oldClearAlpha(num v);
  external bool get enabled;
  external set enabled(bool v);
  external bool get clear;
  external set clear(bool v);
  external bool get needsSwap;
  external set needsSwap(bool v);
  external void render(WebGLRenderer renderer, WebGLRenderTarget writeBuffer,
      WebGLRenderTarget readBuffer, num delta);
}
// End module THREE
