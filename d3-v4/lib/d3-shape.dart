@JS("d3")
library d3_shape;

import "package:js/js.dart";
import "dart:html";
import "package:func/func.dart";

/// Type definitions for D3JS d3-shape module v1.0.3
/// Project: https://github.com/d3/d3-shape/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// -----------------------------------------------------------------------------------
/// Arc Generator
/// -----------------------------------------------------------------------------------
@anonymous
@JS()
abstract class DefaultArcObject {
  external num get innerRadius;
  external set innerRadius(num v);
  external num get outerRadius;
  external set outerRadius(num v);
  external num get startAngle;
  external set startAngle(num v);
  external num get endAngle;
  external set endAngle(num v);
  external num get padAngle;
  external set padAngle(num v);
  external factory DefaultArcObject(
      {num innerRadius,
      num outerRadius,
      num startAngle,
      num endAngle,
      num padAngle});
}

@anonymous
@JS()
abstract class Arc<This, Datum> {
  external dynamic /*String|dynamic*/ call(/*This this*/ Datum d,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external List<num> /*Tuple of <num,num>*/ centroid(Datum d,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  /*external (this: This, d: Datum, ...args: any[]) => number innerRadius();*/
  /*external Arc innerRadius(num radius);*/
  /*external Arc innerRadius((this: This, d: Datum, ...args: any[]) => number radius);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => number|Arc*/ innerRadius(
      [dynamic /*num|(this: This, d: Datum, ...args: any[]) => number*/ radius]);
  /*external (this: This, d: Datum, ...args: any[]) => number outerRadius();*/
  /*external Arc outerRadius(num radius);*/
  /*external Arc outerRadius((this: This, d: Datum, ...args: any[]) => number radius);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => number|Arc*/ outerRadius(
      [dynamic /*num|(this: This, d: Datum, ...args: any[]) => number*/ radius]);
  /*external (this: This, d: Datum, ...args: any[]) => number cornerRadius();*/
  /*external Arc cornerRadius(num radius);*/
  /*external Arc cornerRadius((this: This, d: Datum, ...args: any[]) => number radius);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => number|Arc*/ cornerRadius(
      [dynamic /*num|(this: This, d: Datum, ...args: any[]) => number*/ radius]);
  /*external (this: This, d: Datum, ...args: any[]) => number startAngle();*/
  /*external Arc startAngle(num angle);*/
  /*external Arc startAngle((this: This, d: Datum, ...args: any[]) => number angle);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => number|Arc*/ startAngle(
      [dynamic /*num|(this: This, d: Datum, ...args: any[]) => number*/ angle]);
  /*external (this: This, d: Datum, ...args: any[]) => number endAngle();*/
  /*external Arc endAngle(num angle);*/
  /*external Arc endAngle((this: This, d: Datum, ...args: any[]) => number angle);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => number|Arc*/ endAngle(
      [dynamic /*num|(this: This, d: Datum, ...args: any[]) => number*/ angle]);
  /*external (this: This, d: Datum, ...args: any[]) => number padAngle();*/
  /*external Arc padAngle(num angle);*/
  /*external Arc padAngle((this: This, d: Datum, ...args: any[]) => number angle);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => number|Arc*/ padAngle(
      [dynamic /*num|(this: This, d: Datum, ...args: any[]) => number*/ angle]);
  /*external CanvasRenderingContext2D|Null context();*/
  /*external Arc context(CanvasRenderingContext2D context);*/
  /*external Arc context(Null context);*/
  external dynamic /*CanvasRenderingContext2D|Arc*/ context(
      [CanvasRenderingContext2D context]);
}

/*external Arc<dynamic, DefaultArcObject> arc();*/
/*external Arc<dynamic,Datum> arc<Datum>();*/
/*external Arc<This,Datum> arc<This, Datum>();*/
@JS()
external Arc /*Arc<dynamic,DefaultArcObject>|Arc<dynamic,Datum>|Arc<This,Datum>*/ arc/*<Datum, This>*/();

/// -----------------------------------------------------------------------------------
/// Pie Generator
/// -----------------------------------------------------------------------------------
@anonymous
@JS()
abstract class PieArcDatum<T> {
  external T get data;
  external set data(T v);
  external num get value;
  external set value(num v);
  external num get index;
  external set index(num v);
  external num get startAngle;
  external set startAngle(num v);
  external num get endAngle;
  external set endAngle(num v);
  external num get padAngle;
  external set padAngle(num v);
  external factory PieArcDatum(
      {T data,
      num value,
      num index,
      num startAngle,
      num endAngle,
      num padAngle});
}

@anonymous
@JS()
abstract class Pie<This, Datum> {
  external List<PieArcDatum<Datum>> call(/*This this*/ List<Datum> data,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  /*external Func3<Datum, num, List<Datum>, num> value();*/
  /*external Pie value(num value);*/
  /*external Pie value(num value(Datum d, num i, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|Pie*/ value(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ value]);
  /*external Func2<Datum, Datum, num>|Null sort();*/
  /*external Pie sort(num comparator(Datum a, Datum b));*/
  /*external Pie sort(Null comparator);*/
  external dynamic /*Func2<Datum, Datum, num>|Pie*/ sort(
      [num comparator(Datum a, Datum b)]);
  /*external Func2<num, num, num>|Null sortValues();*/
  /*external Pie sortValues(num comparator(num a, num b));*/
  /*external Pie sortValues(Null comparator);*/
  external dynamic /*Func2<num, num, num>|Pie*/ sortValues(
      [num comparator(num a, num b)]);
  /*external (this: This, data: Array<Datum>, ...args: any[]) => number startAngle();*/
  /*external Pie startAngle(num angle);*/
  /*external Pie startAngle((this: This, data: Array<Datum>, ...args: any[]) => number angle);*/
  external dynamic /*(this: This, data: Array<Datum>, ...args: any[]) => number|Pie*/ startAngle(
      [dynamic /*num|(this: This, data: Array<Datum>, ...args: any[]) => number*/ angle]);
  /*external (this: This, data: Array<Datum>, ...args: any[]) => number endAngle();*/
  /*external Pie endAngle(num angle);*/
  /*external Pie endAngle((this: This, data: Array<Datum>, ...args: any[]) => number angle);*/
  external dynamic /*(this: This, data: Array<Datum>, ...args: any[]) => number|Pie*/ endAngle(
      [dynamic /*num|(this: This, data: Array<Datum>, ...args: any[]) => number*/ angle]);
  /*external (this: This, data: Array<Datum>, ...args: any[]) => number padAngle();*/
  /*external Pie padAngle(num angle);*/
  /*external Pie padAngle((this: This, data: Array<Datum>, ...args: any[]) => number angle);*/
  external dynamic /*(this: This, data: Array<Datum>, ...args: any[]) => number|Pie*/ padAngle(
      [dynamic /*num|(this: This, data: Array<Datum>, ...args: any[]) => number*/ angle]);
}

/*external Pie<dynamic,num|{ valueOf(): number }> pie();*/
/*external Pie<dynamic,Datum> pie<Datum>();*/
/*external Pie<This,Datum> pie<This, Datum>();*/
@JS()
external Pie<dynamic,
    dynamic> /*Pie<dynamic,num|{ valueOf(): number }>|Pie<dynamic,Datum>|Pie<This,Datum>*/ pie/*<Datum, This>*/();

/// -----------------------------------------------------------------------------------
/// Line Generators
/// -----------------------------------------------------------------------------------
@anonymous
@JS()
abstract class Line<Datum> {
  external dynamic /*String|dynamic*/ call(List<Datum> data);
  /*external Func3<Datum, num, List<Datum>, num> x();*/
  /*external Line x(num x);*/
  /*external Line x(num x(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|Line*/ x(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ x]);
  /*external Func3<Datum, num, List<Datum>, num> y();*/
  /*external Line y(num y);*/
  /*external Line y(num y(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|Line*/ y(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ y]);
  /*external Func3<Datum, num, List<Datum>, bool> defined();*/
  /*external Line defined(bool defined);*/
  /*external Line defined(bool defined(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, bool>|Line*/ defined(
      [dynamic /*bool|Func3<Datum, num, List<Datum>, bool>*/ defined]);
  /*external CurveFactory|CurveFactoryLineOnly curve();*/
  /*external Line curve(CurveFactory|CurveFactoryLineOnly curve);*/
  external dynamic /*CurveFactory|CurveFactoryLineOnly|Line*/ curve(
      [Function /*CurveFactory|CurveFactoryLineOnly*/ curve]);
  /*external CanvasRenderingContext2D|Null context();*/
  /*external Line context(CanvasRenderingContext2D context);*/
  /*external Line context(Null context);*/
  external dynamic /*CanvasRenderingContext2D|Line*/ context(
      [CanvasRenderingContext2D context]);
}

/*external Line<Tuple of <num,num>> line();*/
/*external Line<Datum> line<Datum>();*/
/*external Line<Datum> line<This, Datum>();*/
@JS()
external Line /*Line<Tuple of <num,num>>|Line<Datum>*/ line/*<Datum, This>*/();

@anonymous
@JS()
abstract class RadialLine<Datum> {
  external dynamic /*String|dynamic*/ call(List<Datum> data);
  /*external Func3<Datum, num, List<Datum>, num> angle();*/
  /*external RadialLine angle(num angle);*/
  /*external RadialLine angle(num angle(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|RadialLine*/ angle(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ angle]);
  /*external Func3<Datum, num, List<Datum>, num> radius();*/
  /*external RadialLine radius(num radius);*/
  /*external RadialLine radius(num radius(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|RadialLine*/ radius(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ radius]);
  /*external Func3<Datum, num, List<Datum>, bool> defined();*/
  /*external RadialLine defined(bool defined);*/
  /*external RadialLine defined(bool defined(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, bool>|RadialLine*/ defined(
      [dynamic /*bool|Func3<Datum, num, List<Datum>, bool>*/ defined]);
  /*external CurveFactory|CurveFactoryLineOnly curve();*/
  /*external RadialLine curve(CurveFactory|CurveFactoryLineOnly curve);*/
  external dynamic /*CurveFactory|CurveFactoryLineOnly|RadialLine*/ curve(
      [Function /*CurveFactory|CurveFactoryLineOnly*/ curve]);
  /*external CanvasRenderingContext2D|Null context();*/
  /*external RadialLine context(CanvasRenderingContext2D context);*/
  /*external RadialLine context(Null context);*/
  external dynamic /*CanvasRenderingContext2D|RadialLine*/ context(
      [CanvasRenderingContext2D context]);
}

/*external RadialLine<Tuple of <num,num>> radialLine();*/
/*external RadialLine<Datum> radialLine<Datum>();*/
@JS()
external RadialLine /*RadialLine<Tuple of <num,num>>|RadialLine<Datum>*/ radialLine/*<Datum>*/();

/// -----------------------------------------------------------------------------------
/// Area Generators
/// -----------------------------------------------------------------------------------
@anonymous
@JS()
abstract class Area<Datum> {
  external dynamic /*String|dynamic*/ call(List<Datum> data);
  /*external Func3<Datum, num, List<Datum>, num> x();*/
  /*external Area x(num x);*/
  /*external Area x(num x(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|Area*/ x(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ x]);
  /*external Func3<Datum, num, List<Datum>, num> x0();*/
  /*external Area x0(num x0);*/
  /*external Area x0(num x0(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|Area*/ x0(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ x0]);
  /*external Func3<Datum, num, List<Datum>, num>|Null x1();*/
  /*external Area x1(num x);*/
  /*external Area x1(num x(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|Area*/ x1(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ x]);
  /*external Func3<Datum, num, List<Datum>, num> y();*/
  /*external Area y(num y);*/
  /*external Area y(num y(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|Area*/ y(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ y]);
  /*external Func3<Datum, num, List<Datum>, num> y0();*/
  /*external Area y0(num y);*/
  /*external Area y0(num y(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|Area*/ y0(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ y]);
  /*external Func3<Datum, num, List<Datum>, num> y1();*/
  /*external Area y1(num y);*/
  /*external Area y1(num y(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|Area*/ y1(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ y]);
  /*external Func3<Datum, num, List<Datum>, bool> defined();*/
  /*external Area defined(bool defined);*/
  /*external Area defined(bool defined(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, bool>|Area*/ defined(
      [dynamic /*bool|Func3<Datum, num, List<Datum>, bool>*/ defined]);
  /*external CurveFactory curve();*/
  /*external Area curve(CurveFactory curve);*/
  external dynamic /*CurveFactory|Area*/ curve([CurveFactory curve]);
  /*external CanvasRenderingContext2D|Null context();*/
  /*external Area context(CanvasRenderingContext2D context);*/
  /*external Area context(Null context);*/
  external dynamic /*CanvasRenderingContext2D|Area*/ context(
      [CanvasRenderingContext2D context]);
  external Line<Datum> lineX0();
  external Line<Datum> lineY0();
  external Line<Datum> lineX1();
  external Line<Datum> lineY1();
}

/*external Area<Tuple of <num,num>> area();*/
/*external Area<Datum> area<Datum>();*/
@JS()
external Area /*Area<Tuple of <num,num>>|Area<Datum>*/ area/*<Datum>*/();

@anonymous
@JS()
abstract class RadialArea<Datum> {
  external dynamic /*String|dynamic*/ call(List<Datum> data);
  /*external Func3<Datum, num, List<Datum>, num> angle();*/
  /*external RadialArea angle(num angle);*/
  /*external RadialArea angle(num angle(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|RadialArea*/ angle(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ angle]);
  /*external Func3<Datum, num, List<Datum>, num> startAngle();*/
  /*external RadialArea startAngle(num angle);*/
  /*external RadialArea startAngle(num angle(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|RadialArea*/ startAngle(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ angle]);
  /*external Func3<Datum, num, List<Datum>, num>|Null endAngle();*/
  /*external RadialArea endAngle(num angle);*/
  /*external RadialArea endAngle(num angle(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|RadialArea*/ endAngle(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ angle]);
  /*external Func3<Datum, num, List<Datum>, num> radius();*/
  /*external RadialArea radius(num radius);*/
  /*external RadialArea radius(num radius(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|RadialArea*/ radius(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ radius]);
  /*external Func3<Datum, num, List<Datum>, num> innerRadius();*/
  /*external RadialArea innerRadius(num radius);*/
  /*external RadialArea innerRadius(
    num radius(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|RadialArea*/ innerRadius(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ radius]);
  /*external Func3<Datum, num, List<Datum>, num> outerRadius();*/
  /*external RadialArea outerRadius(num radius);*/
  /*external RadialArea outerRadius(
    num radius(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, num>|RadialArea*/ outerRadius(
      [dynamic /*num|Func3<Datum, num, List<Datum>, num>*/ radius]);
  /*external Func3<Datum, num, List<Datum>, bool> defined();*/
  /*external RadialArea defined(bool defined);*/
  /*external RadialArea defined(bool defined(Datum d, num index, List<Datum> data));*/
  external dynamic /*Func3<Datum, num, List<Datum>, bool>|RadialArea*/ defined(
      [dynamic /*bool|Func3<Datum, num, List<Datum>, bool>*/ defined]);
  /*external CurveFactory curve();*/
  /*external RadialArea curve(CurveFactory curve);*/
  external dynamic /*CurveFactory|RadialArea*/ curve([CurveFactory curve]);
  /*external CanvasRenderingContext2D|Null context();*/
  /*external RadialArea context(CanvasRenderingContext2D context);*/
  /*external RadialArea context(Null context);*/
  external dynamic /*CanvasRenderingContext2D|RadialArea*/ context(
      [CanvasRenderingContext2D context]);
  external RadialLine<Datum> lineStartAngle();
  external RadialLine<Datum> lineInnerRadius();
  external RadialLine<Datum> lineEndAngle();
  external RadialLine<Datum> lineOuterRadius();
}

/*external RadialArea<Tuple of <num,num>> radialArea();*/
/*external RadialArea<Datum> radialArea<Datum>();*/
@JS()
external RadialArea /*RadialArea<Tuple of <num,num>>|RadialArea<Datum>*/ radialArea/*<Datum>*/();

/// -----------------------------------------------------------------------------------
/// Curve Factories
/// -----------------------------------------------------------------------------------
@anonymous
@JS()
abstract class CurveGeneratorLineOnly {
  external void lineStart();
  external void lineEnd();
  external void point(num x, num y);
}

typedef CurveGeneratorLineOnly CurveFactoryLineOnly(
    CanvasRenderingContext2D /*CanvasRenderingContext2D|Null*/ context);

@anonymous
@JS()
abstract class CurveGenerator implements CurveGeneratorLineOnly {
  external void areaStart();
  external void areaEnd();
}

typedef CurveGenerator CurveFactory(
    CanvasRenderingContext2D /*CanvasRenderingContext2D|Null*/ context);
@JS()
external CurveFactory get curveBasis;
@JS()
external set curveBasis(CurveFactory v);
@JS()
external CurveFactory get curveBasisOpen;
@JS()
external set curveBasisOpen(CurveFactory v);
@JS()
external CurveFactory get curveBasisClosed;
@JS()
external set curveBasisClosed(CurveFactory v);

@anonymous
@JS()
abstract class CurveBundleFactory implements Function/*=CurveFactoryLineOnly*/ {
  external CurveBundleFactory beta(num beta);
}

@JS()
external CurveBundleFactory get curveBundle;
@JS()
external set curveBundle(CurveBundleFactory v);

@anonymous
@JS()
abstract class CurveCardinalFactory implements Function/*=CurveFactory*/ {
  external CurveCardinalFactory tension(num tension);
}

@JS()
external CurveCardinalFactory get curveCardinal;
@JS()
external set curveCardinal(CurveCardinalFactory v);
@JS()
external CurveCardinalFactory get curveCardinalOpen;
@JS()
external set curveCardinalOpen(CurveCardinalFactory v);
@JS()
external CurveCardinalFactory get curveCardinalClosed;
@JS()
external set curveCardinalClosed(CurveCardinalFactory v);

@anonymous
@JS()
abstract class CurveCatmullRomFactory implements Function/*=CurveFactory*/ {
  external CurveCatmullRomFactory alpha(num alpha);
}

@JS()
external CurveCatmullRomFactory get curveCatmullRom;
@JS()
external set curveCatmullRom(CurveCatmullRomFactory v);
@JS()
external CurveCatmullRomFactory get curveCatmullRomOpen;
@JS()
external set curveCatmullRomOpen(CurveCatmullRomFactory v);
@JS()
external CurveCatmullRomFactory get curveCatmullRomClosed;
@JS()
external set curveCatmullRomClosed(CurveCatmullRomFactory v);
@JS()
external CurveFactory get curveLinear;
@JS()
external set curveLinear(CurveFactory v);
@JS()
external CurveFactory get curveLinearClosed;
@JS()
external set curveLinearClosed(CurveFactory v);
@JS()
external CurveFactory get curveMonotoneX;
@JS()
external set curveMonotoneX(CurveFactory v);
@JS()
external CurveFactory get curveMonotoneY;
@JS()
external set curveMonotoneY(CurveFactory v);
@JS()
external CurveFactory get curveNatural;
@JS()
external set curveNatural(CurveFactory v);
@JS()
external CurveFactory get curveStep;
@JS()
external set curveStep(CurveFactory v);
@JS()
external CurveFactory get curveStepAfter;
@JS()
external set curveStepAfter(CurveFactory v);
@JS()
external CurveFactory get curveStepBefore;
@JS()
external set curveStepBefore(CurveFactory v);

/// -----------------------------------------------------------------------------------
/// SYMBOLS
/// -----------------------------------------------------------------------------------
@anonymous
@JS()
abstract class SymbolType {
  external void draw(CanvasPathMethods context, num size);
}

@anonymous
@JS()
abstract class Symbol<This, Datum> {
  external dynamic /*dynamic|String*/ call(
      /*This this*/ [Datum d,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  /*external (this: This, d: Datum, ...args: any[]) => number size();*/
  /*external Symbol size(num size);*/
  /*external Symbol size((this: This, d: Datum, ...args: any[]) => number size);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => number|Symbol*/ size(
      [dynamic /*num|(this: This, d: Datum, ...args: any[]) => number*/ size]);
  /*external (this: This, d: Datum, ...args: any[]) => SymbolType type();*/
  /*external Symbol type(SymbolType type);*/
  /*external Symbol type((this: This, d: Datum, ...args: any[]) => SymbolType type);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => SymbolType|Symbol*/ type(
      [dynamic /*SymbolType|(this: This, d: Datum, ...args: any[]) => SymbolType*/ type]);
  /*external CanvasRenderingContext2D|Null context();*/
  /*external Symbol context(CanvasRenderingContext2D context);*/
  /*external Symbol context(Null context);*/
  external dynamic /*CanvasRenderingContext2D|Symbol*/ context(
      [CanvasRenderingContext2D context]);
}

/*external Symbol<dynamic, dynamic> symbol();*/
/*external Symbol<dynamic,Datum> symbol<Datum>();*/
/*external Symbol<This,Datum> symbol<This, Datum>();*/
@JS()
external Symbol<dynamic,
    dynamic> /*Symbol<dynamic,dynamic>|Symbol<dynamic,Datum>|Symbol<This,Datum>*/ symbol/*<Datum, This>*/();
@JS()
external List<SymbolType> get symbols;
@JS()
external set symbols(List<SymbolType> v);
@JS()
external SymbolType get symbolCircle;
@JS()
external set symbolCircle(SymbolType v);
@JS()
external SymbolType get symbolCross;
@JS()
external set symbolCross(SymbolType v);
@JS()
external SymbolType get symbolDiamond;
@JS()
external set symbolDiamond(SymbolType v);
@JS()
external SymbolType get symbolSquare;
@JS()
external set symbolSquare(SymbolType v);
@JS()
external SymbolType get symbolStar;
@JS()
external set symbolStar(SymbolType v);
@JS()
external SymbolType get symbolTriangle;
@JS()
external set symbolTriangle(SymbolType v);
@JS()
external SymbolType get symbolWye;
@JS()
external set symbolWye(SymbolType v);

/// -----------------------------------------------------------------------------------
/// STACKS
/// -----------------------------------------------------------------------------------

/// SeriesPoint is a [number, number] two-element Array with added
/// data and index properties related to the data element which formed the basis for the
/// SeriesPoint
@anonymous
@JS()
abstract class SeriesPoint<Datum> implements List<num> {
  external num get JS$0;
  external set JS$0(num v);
  external num get JS$1;
  external set JS$1(num v);
  external num get index;
  external set index(num v);
  external Datum get data;
  external set data(Datum v);
}

@anonymous
@JS()
abstract class Series<Datum, Key> implements List<SeriesPoint<Datum>> {
  external Key get key;
  external set key(Key v);
}

@anonymous
@JS()
abstract class Stack<This, Datum, Key> {
  external List<Series<Datum, Key>> call(List<Datum> data,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  /*external (this: This, data: Array<Datum>, ...args: any[]) => Array<Key> keys();*/
  /*external Stack keys(List<Key> keys);*/
  /*external Stack keys((this: This, data: Array<Datum>, ...args: any[]) => Array<Key> keys);*/
  external dynamic /*(this: This, data: Array<Datum>, ...args: any[]) => Array<Key>|Stack*/ keys(
      [dynamic /*List<Key>|(this: This, data: Array<Datum>, ...args: any[]) => Array<Key>*/ keys]);
  /*external Func4<Datum, Key, num, List<Datum>, num> value();*/
  /*external Stack value(num value);*/
  /*external Stack value(num value(Datum d, Key key, num j, List<Datum> data));*/
  external dynamic /*Func4<Datum, Key, num, List<Datum>, num>|Stack*/ value(
      [dynamic /*num|Func4<Datum, Key, num, List<Datum>, num>*/ value]);
  /*external Func1<Series<Datum, Key>, List<num>> order();*/
  /*external Stack order(Null order);*/
  /*external Stack order(List<num> order);*/
  /*external Stack order(List<num> order(Series<Datum, Key> series));*/
  external dynamic /*Func1<Series<Datum,Key>, List<num>>|Stack*/ order(
      [dynamic /*List<num>|Func1<Series<Datum,Key>, List<num>>*/ order]);
  /*external VoidFunc2<Series<Datum, Key>, List<num>> offset();*/
  /*external Stack offset(Null offset);*/
  /*external Stack offset(void offset(Series<Datum, Key> series, List<num> order));*/
  external dynamic /*VoidFunc2<Series<Datum,Key>, List<num>>|Stack*/ offset(
      [void offset(Series<Datum, Key> series, List<num> order)]);
}

/*external Stack<dynamic,JSMap of <String,num>,String> stack();*/
/*external Stack<dynamic,Datum,String> stack<Datum>();*/
/*external Stack<dynamic,Datum,Key> stack<Datum, Key>();*/
/*external Stack<This,Datum,Key> stack<This, Datum, Key>();*/
@JS()
external Stack /*Stack<dynamic,JSMap of <String,num>,String>|Stack<dynamic,Datum,String>|Stack<dynamic,Datum,Key>|Stack<This,Datum,Key>*/ stack/*<Datum, Key, This>*/();
@JS()
external List<num> stackOrderAscending(Series<dynamic, dynamic> series);
@JS()
external List<num> stackOrderDescending(Series<dynamic, dynamic> series);
@JS()
external List<num> stackOrderInsideOut(Series<dynamic, dynamic> series);
@JS()
external List<num> stackOrderNone(Series<dynamic, dynamic> series);
@JS()
external List<num> stackOrderReverse(Series<dynamic, dynamic> series);
@JS()
external void stackOffsetExpand(
    Series<dynamic, dynamic> series, List<num> order);
@JS()
external void stackOffsetNone(Series<dynamic, dynamic> series, List<num> order);
@JS()
external void stackOffsetSilhouette(
    Series<dynamic, dynamic> series, List<num> order);
@JS()
external void stackOffsetWiggle(
    Series<dynamic, dynamic> series, List<num> order);
