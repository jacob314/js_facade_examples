@JS()
library three_css3drenderer;

import "package:js/js.dart";
import "dart:html";
import "three.dart";

/// Type definitions for three.js (CSS3DRenderer.js)
/// Project: https://github.com/mrdoob/three.js/blob/master/examples/js/renderers/CSS3DRenderer.js
/// Definitions by: Satoru Kimura <https://github.com/gyohk>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// This renderer does not work in IE. Can be found here for more information.
/// https://github.com/mrdoob/three.js/issues/4783

/// <reference path="./three.d.ts" />

// Module THREE
@JS("THREE.CSS3DObject")
class CSS3DObject extends Object3D {
  // @Ignore
  CSS3DObject.fakeConstructor$() : super.fakeConstructor$();
  external factory CSS3DObject(dynamic element);
  external dynamic get element;
  external set element(dynamic v);
}

@JS("THREE.CSS3DSprite")
class CSS3DSprite extends CSS3DObject {
  // @Ignore
  CSS3DSprite.fakeConstructor$() : super.fakeConstructor$();
  external factory CSS3DSprite(dynamic element);
}

@JS("THREE.CSS3DRenderer")
class CSS3DRenderer {
  // @Ignore
  CSS3DRenderer.fakeConstructor$();
  external factory CSS3DRenderer();
  external HtmlElement get domElement;
  external set domElement(HtmlElement v);
  external void setSize(num width, num height);
  external void render(Scene scene, Camera camera);
}
// End module THREE
