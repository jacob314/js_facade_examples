@JS()
library d3_scale_chromatic;

import "package:js/js.dart";

/// Type definitions for D3JS d3-scale-chromatic module 1.0.2
/// Project: https://github.com/d3/d3-scale-chromatic/
/// Definitions by: Hugues Stefanski <https://github.com/Ledragon>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// -----------------------------------------------------------------------
/// Categorical
/// -----------------------------------------------------------------------
/// An array of eight categorical colors represented as RGB hexadecimal strings.
@JS()
external List<String> get schemeAccent;

/// An array of eight categorical colors represented as RGB hexadecimal strings.
@JS()
external List<String> get schemeDark2;

/// An array of twelve categorical colors represented as RGB hexadecimal strings.
@JS()
external List<String> get schemePaired;

/// An array of nine categorical colors represented as RGB hexadecimal strings.
@JS()
external List<String> get schemePastel1;

/// An array of eight categorical colors represented as RGB hexadecimal strings.
@JS()
external List<String> get schemePastel2;

/// An array of nine categorical colors represented as RGB hexadecimal strings.
@JS()
external List<String> get schemeSet1;

/// An array of eight categorical colors represented as RGB hexadecimal strings.
@JS()
external List<String> get schemeSet2;

/// An array of twelve categorical colors represented as RGB hexadecimal strings.
@JS()
external List<String> get schemeSet3;

/// -----------------------------------------------------------------------
/// Diverging
/// -----------------------------------------------------------------------
/// Given a number value in the range [0,1], returns the corresponding color from the “BrBG” diverging color scheme represented as an RGB string.
@JS()
external String interpolateBrBG(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “PRGn” diverging color scheme represented as an RGB string.
@JS()
external String interpolatePRGn(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “PiYG” diverging color scheme represented as an RGB string.
@JS()
external String interpolatePiYG(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “PuOr” diverging color scheme represented as an RGB string.
@JS()
external String interpolatePuOr(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “RdBu” diverging color scheme represented as an RGB string.
@JS()
external String interpolateRdBu(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “RdGy” diverging color scheme represented as an RGB string.
@JS()
external String interpolateRdGy(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “RdYlBu” diverging color scheme represented as an RGB string.
@JS()
external String interpolateRdYlBu(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “RdYlGn” diverging color scheme represented as an RGB string.
@JS()
external String interpolateRdYlGn(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “Spectral” diverging color scheme represented as an RGB string.
@JS()
external String interpolateSpectral(num value);

/// -----------------------------------------------------------------------
/// Sequential
/// -----------------------------------------------------------------------
/// Given a number t in the range [0,1], returns the corresponding color from the “Blues” sequential color scheme represented as an RGB string.
@JS()
external String interpolateBlues(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “Greens” sequential color scheme represented as an RGB string.
@JS()
external String interpolateGreens(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “Greys” sequential color scheme represented as an RGB string.
@JS()
external String interpolateGreys(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “Oranges” sequential color scheme represented as an RGB string.
@JS()
external String interpolateOranges(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “Purples” sequential color scheme represented as an RGB string.
@JS()
external String interpolatePurples(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “Reds” sequential color scheme represented as an RGB string.
@JS()
external String interpolateReds(num value);

/// -----------------------------------------------------------------------
/// Sequential(Multi-Hue)
/// -----------------------------------------------------------------------

/// Given a number t in the range [0,1], returns the corresponding color from the “BuGn” sequential color scheme represented as an RGB string.
@JS()
external String interpolateBuGn(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “BuPu” sequential color scheme represented as an RGB string.
@JS()
external String interpolateBuPu(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “GnBu” sequential color scheme represented as an RGB string.
@JS()
external String interpolateGnBu(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “OrRd” sequential color scheme represented as an RGB string.
@JS()
external String interpolateOrRd(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “PuBuGn” sequential color scheme represented as an RGB string.
@JS()
external String interpolatePuBuGn(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “PuBu” sequential color scheme represented as an RGB string.
@JS()
external String interpolatePuBu(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “PuRd” sequential color scheme represented as an RGB string.
@JS()
external String interpolatePuRd(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “RdPu” sequential color scheme represented as an RGB string.
@JS()
external String interpolateRdPu(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “YlGnBu” sequential color scheme represented as an RGB string.
@JS()
external String interpolateYlGnBu(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “YlGn” sequential color scheme represented as an RGB string.
@JS()
external String interpolateYlGn(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “YlOrBr” sequential color scheme represented as an RGB string.
@JS()
external String interpolateYlOrBr(num value);

/// Given a number t in the range [0,1], returns the corresponding color from the “YlOrRd” sequential color scheme represented as an RGB string.
@JS()
external String interpolateYlOrRd(num value);
