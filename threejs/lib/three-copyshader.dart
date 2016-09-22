@JS()
library three_copyshader;

import "package:js/js.dart";
import "three.dart";

/// Type definitions for three.js (CopyShader.js)
/// Project: https://github.com/mrdoob/three.js/blob/r68/examples/js/shaders/CopyShader.js
/// Definitions by: Satoru Kimura <https://github.com/gyohk>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// <reference path="./three.d.ts" />

// Module THREE
@JS("THREE.CopyShader")
external Shader get CopyShader;
@JS("THREE.CopyShader")
external set CopyShader(Shader v);
// End module THREE
