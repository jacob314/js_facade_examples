@JS("d3")
library d3_zoom;

import "package:js/js.dart";
import "d3-selection.dart";
import "dart:html";

/// Type definitions for d3JS d3-zoom module v1.0.3
/// Project: https://github.com/d3/d3-zoom/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
import "d3-selection.dart" show ArrayLike, Selection, TransitionLike, ValueFn;

/// --------------------------------------------------------------------------
/// Shared Type Definitions and Interfaces
/// --------------------------------------------------------------------------

/// ZoomedElementBaseType serves as an alias for the 'minimal' data type which can be selected
/// without 'd3-zoom' (and related code in 'd3-selection') trying to use properties internally which would otherwise not
/// be supported.
/*type ZoomedElementBaseType = Element;*/

/// Minimal interface for a continuous scale.
/// This interface is used as a minimum contract for scale objects
/// that  can be passed into zoomTransform methods rescaleX and rescaleY
@anonymous
@JS()
abstract class ZoomScale {
  /*external List<num> domain();*/
  /*external ZoomScale domain(List<num> domain);*/
  external dynamic /*List<num>|ZoomScale*/ domain([List<num> domain]);
  /*external List<num> range();*/
  /*external ZoomScale range(List<num> range);*/
  external dynamic /*List<num>|ZoomScale*/ range([List<num> range]);
  external ZoomScale copy();
  external num invert(num value);
}

/// --------------------------------------------------------------------------
/// Zoom Behavior
/// --------------------------------------------------------------------------
@anonymous
@JS()
abstract class ZoomBehavior<ZoomRefElement extends Element, Datum>
    implements Function {
  external void call(
      Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  /*external void transform(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    ZoomTransform transform);*/
  /*external void transform(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    ValueFn<ZoomRefElement, Datum, ZoomTransform> transform);*/
  /*external void transform(
    TransitionLike<ZoomRefElement, Datum> transition, ZoomTransform transform);*/
  /*external void transform(TransitionLike<ZoomRefElement, Datum> transition,
    ValueFn<ZoomRefElement, Datum, ZoomTransform> transform);*/
  external void transform(
      dynamic /*Selection<ZoomRefElement,Datum,dynamic,dynamic>|TransitionLike<ZoomRefElement,Datum>*/ selection_transition,
      ZoomTransform transform);
  /*external void translateBy(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection, num x, num y);*/
  /*external void translateBy(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    ValueFn<ZoomRefElement, Datum, num> x,
    num y);*/
  /*external void translateBy(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    num x,
    ValueFn<ZoomRefElement, Datum, num> y);*/
  /*external void translateBy(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    ValueFn<ZoomRefElement, Datum, num> x,
    ValueFn<ZoomRefElement, Datum, num> y);*/
  /*external void translateBy(
    TransitionLike<ZoomRefElement, Datum> transition, num x, num y);*/
  /*external void translateBy(TransitionLike<ZoomRefElement, Datum> transition,
    ValueFn<ZoomRefElement, Datum, num> x, num y);*/
  /*external void translateBy(TransitionLike<ZoomRefElement, Datum> transition,
    num x, ValueFn<ZoomRefElement, Datum, num> y);*/
  /*external void translateBy(
    TransitionLike<ZoomRefElement, Datum> transition,
    ValueFn<ZoomRefElement, Datum, num> x,
    ValueFn<ZoomRefElement, Datum, num> y);*/
  external void translateBy(
      dynamic /*Selection<ZoomRefElement,Datum,dynamic,dynamic>|TransitionLike<ZoomRefElement,Datum>*/ selection_transition,
      num x,
      num y);
  /*external void scaleBy(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection, num k);*/
  /*external void scaleBy(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    ValueFn<ZoomRefElement, Datum, num> k);*/
  /*external void scaleBy(TransitionLike<ZoomRefElement, Datum> transition, num k);*/
  /*external void scaleBy(TransitionLike<ZoomRefElement, Datum> transition,
    ValueFn<ZoomRefElement, Datum, num> k);*/
  external void scaleBy(
      dynamic /*Selection<ZoomRefElement,Datum,dynamic,dynamic>|TransitionLike<ZoomRefElement,Datum>*/ selection_transition,
      num k);
  /*external void scaleTo(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection, num k);*/
  /*external void scaleTo(
    Selection<ZoomRefElement, Datum, dynamic, dynamic> selection,
    ValueFn<ZoomRefElement, Datum, num> k);*/
  /*external void scaleTo(TransitionLike<ZoomRefElement, Datum> transition, num k);*/
  /*external void scaleTo(TransitionLike<ZoomRefElement, Datum> transition,
    ValueFn<ZoomRefElement, Datum, num> k);*/
  external void scaleTo(
      dynamic /*Selection<ZoomRefElement,Datum,dynamic,dynamic>|TransitionLike<ZoomRefElement,Datum>*/ selection_transition,
      num k);
  /*external ValueFn<ZoomRefElement, Datum, bool> filter();*/
  /*external ZoomBehavior filter(ValueFn<ZoomRefElement, Datum, bool> filterFn);*/
  external ZoomBehavior filter([filterFn]);
  /*external ValueFn<ZoomRefElement,Datum,Tuple of <Tuple of <num,num>,Tuple of <num,num>>> extent();*/
  /*external ZoomBehavior extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  /*external ZoomBehavior extent(ValueFn<ZoomRefElement,Datum,Tuple of <Tuple of <num,num>,Tuple of <num,num>>> extent);*/
  external ZoomBehavior extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external Tuple of <num,num> scaleExtent();*/
  /*external ZoomBehavior scaleExtent(Tuple of <num,num> extent);*/
  external dynamic /*Tuple of <num,num>|ZoomBehavior*/ scaleExtent(
      [List<num> /*Tuple of <num,num>*/ extent]);
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> translateExtent();*/
  /*external ZoomBehavior translateExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|ZoomBehavior*/ translateExtent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external num duration();*/
  /*external ZoomBehavior duration(num duration);*/
  external dynamic /*num|ZoomBehavior*/ duration([num duration]);
  /*external ValueFn<ZoomRefElement, Datum, Null> on(String typenames);*/
  /*external ZoomBehavior on(String typenames, Null callback);*/
  /*external ZoomBehavior on(
    String typenames, ValueFn<ZoomRefElement, Datum, Null> callback);*/
  external ZoomBehavior on(String typenames, [callback]);
}

@JS()
external ZoomBehavior<dynamic/*=ZoomRefElement*/, dynamic/*=Datum*/ >
    zoom/*<ZoomRefElement extends Element, Datum>*/();

/// --------------------------------------------------------------------------
/// Zoom Event
/// --------------------------------------------------------------------------
@anonymous
@JS()
abstract class D3ZoomEvent<ZoomRefElement extends Element, Datum> {
  external ZoomBehavior<ZoomRefElement, Datum> get target;
  external set target(ZoomBehavior<ZoomRefElement, Datum> v);
  external String /*'start'|'zoom'|'end'|String*/ get type;
  external set type(String /*'start'|'zoom'|'end'|String*/ v);
  external ZoomTransform get transform;
  external set transform(ZoomTransform v);
  external dynamic get sourceEvent;
  external set sourceEvent(dynamic v);
  external factory D3ZoomEvent(
      {ZoomBehavior<ZoomRefElement, Datum> target,
      String /*'start'|'zoom'|'end'|String*/ type,
      ZoomTransform transform,
      dynamic sourceEvent});
}

/// --------------------------------------------------------------------------
/// Zoom Transforms
/// --------------------------------------------------------------------------
@anonymous
@JS()
abstract class ZoomTransform {
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get k;
  external set k(num v);
  external List<num> /*Tuple of <num,num>*/ apply(
      List<num> /*Tuple of <num,num>*/ point);
  external num applyX(num x);
  external num applyY(num y);
  external List<num> /*Tuple of <num,num>*/ invert(
      List<num> /*Tuple of <num,num>*/ point);
  external num invertX(num x);
  external num invertY(num y);
  external dynamic/*=S*/ rescaleX/*<S extends ZoomScale>*/(
      dynamic/*=S*/ xScale);
  external dynamic/*=S*/ rescaleY/*<S extends ZoomScale>*/(
      dynamic/*=S*/ yScale);
  external ZoomTransform scale(num k);
  external String toString();
  external ZoomTransform translate(num x, num y);
}

@JS()
external ZoomTransform zoomTransform(Element node);
@JS()
external ZoomTransform get zoomIdentity;
