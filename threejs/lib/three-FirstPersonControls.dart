@JS()
library three_FirstPersonControls;

import "package:js/js.dart";
import "three.dart";
import "dart:html";

/// Type definitions for three.js
/// Project: http://mrdoob.github.com/three.js/
/// Definitions by: Poul Kjeldager Sørensen <https://github.com/s093294>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// Source : https://github.com/NTaylorMullen/CycleR/blob/master/CycleR/CycleR.Game.Client/Client/Interfaces/ThreeJS/Cameras/FirstPersonControls.d.ts

/// <reference path="./three.d.ts" />

// Module THREE
@JS("THREE.FirstPersonControls")
class FirstPersonControls {
  // @Ignore
  FirstPersonControls.fakeConstructor$();
  external factory FirstPersonControls(Camera object, [HtmlElement domElement]);
  external Object3D get object;
  external set object(Object3D v);
  external Vector3 get target;
  external set target(Vector3 v);
  external dynamic /*CanvasElement|HtmlDocument*/ get domElement;
  external set domElement(dynamic /*CanvasElement|HtmlDocument*/ v);
  external bool get enabled;
  external set enabled(bool v);
  external num get movementSpeed;
  external set movementSpeed(num v);
  external num get lookSpeed;
  external set lookSpeed(num v);
  external bool get noFly;
  external set noFly(bool v);
  external bool get lookVertical;
  external set lookVertical(bool v);
  external bool get autoForward;
  external set autoForward(bool v);
  external bool get activeLook;
  external set activeLook(bool v);
  external bool get heightSpeed;
  external set heightSpeed(bool v);
  external num get heightCoef;
  external set heightCoef(num v);
  external num get heightMin;
  external set heightMin(num v);
  external num get heightMax;
  external set heightMax(num v);
  external bool get constrainVertical;
  external set constrainVertical(bool v);
  external num get verticalMin;
  external set verticalMin(num v);
  external num get verticalMax;
  external set verticalMax(num v);
  external num get autoSpeedFactor;
  external set autoSpeedFactor(num v);
  external num get mouseX;
  external set mouseX(num v);
  external num get mouseY;
  external set mouseY(num v);
  external num get lat;
  external set lat(num v);
  external num get lon;
  external set lon(num v);
  external num get phi;
  external set phi(num v);
  external num get theta;
  external set theta(num v);
  external bool get moveForward;
  external set moveForward(bool v);
  external bool get moveBackward;
  external set moveBackward(bool v);
  external bool get moveLeft;
  external set moveLeft(bool v);
  external bool get moveRight;
  external set moveRight(bool v);
  external bool get freeze;
  external set freeze(bool v);
  external bool get mouseDragOn;
  external set mouseDragOn(bool v);
  external void update(num delta);
  external void dispose();
}
// End module THREE
