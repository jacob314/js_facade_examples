@JS()
library three_effectcomposer;

import "package:js/js.dart";
import "three.dart";
import "three-shaderpass.dart";

/// Type definitions for three.js (EffectComposer.js)
/// Project: https://github.com/mrdoob/three.js/blob/r68/examples/js/postprocessing/EffectComposer.js
/// Definitions by: Satoru Kimura <https://github.com/gyohk>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// <reference path="./three.d.ts" />
/// <reference path="./three-shaderpass.d.ts" />
/// <reference path="./three-copyshader.d.ts" />

// Module THREE
@JS("THREE.EffectComposer")
class EffectComposer {
  // @Ignore
  EffectComposer.fakeConstructor$();
  external factory EffectComposer(WebGLRenderer renderer,
      [WebGLRenderTarget renderTarget]);
  external WebGLRenderTarget get renderTarget1;
  external set renderTarget1(WebGLRenderTarget v);
  external WebGLRenderTarget get renderTarget2;
  external set renderTarget2(WebGLRenderTarget v);
  external WebGLRenderTarget get writeBuffer;
  external set writeBuffer(WebGLRenderTarget v);
  external WebGLRenderTarget get readBuffer;
  external set readBuffer(WebGLRenderTarget v);
  external List<dynamic> get passes;
  external set passes(List<dynamic> v);
  external ShaderPass get copyPass;
  external set copyPass(ShaderPass v);
  external void swapBuffers();
  external void addPass(dynamic pass);
  external void insertPass(dynamic pass, num index);
  external void render([num delta]);
  external void reset([WebGLRenderTarget renderTarget]);
  external void setSize(num width, num height);
}
// End module THREE
