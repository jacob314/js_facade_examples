@JS()
library d3_hsv;

import "package:js/js.dart";
import "d3-color.dart";

/// Type definitions for D3JS d3-hsv module v0.0.3
/// Project: https://github.com/d3/d3-hsv/
/// Definitions by: Yuri Feldman <https://github.com/arrayjam>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
import "d3-color.dart"
    show
        Color,
        RGBColor,
        ColorCommonInstance; /*type ColorSpaceObjectWithHSV = ColorSpaceObject | HSVColor;*/

@anonymous
@JS()
abstract class HSVColorFactory implements Function {
  /*external HSVColor call(num h, num s, num v, [num opacity]);*/
  /*external HSVColor call(String cssColorSpecifier);*/
  /*external HSVColor call(HSVColor|RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance color);*/
  external HSVColor call(
      dynamic /*num|String|HSVColor|RGBColor|HSLColor|LabColor|HCLColor|CubehelixColor|ColorCommonInstance*/ h_cssColorSpecifier_color,
      [num s,
      num v,
      num opacity]);
}

@anonymous
@JS()
abstract class HSVColor implements Color {
  external num get h;
  external set h(num v);
  external num get s;
  external set s(num v);
  external num get v;
  external set v(num v);
  external num get opacity;
  external set opacity(num v);
  external HSVColor brighter([num k]);
  external HSVColor darker([num k]);
  external RGBColor rgb();
}

@JS()
external HSVColorFactory get hsv;
@JS()
external set hsv(HSVColorFactory v);
