@JS("d3")
library d3_brush;

import "package:js/js.dart";
import "d3-selection.dart";
import "dart:svg";

/// Type definitions for D3JS d3-brush module v1.0.2
/// Project: https://github.com/d3/d3-brush/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
import "d3-selection.dart" show ArrayLike, Selection, TransitionLike, ValueFn;

/// Type alias for a BrushSelection. For a two-dimensional brush, it must be defined as [[x0, y0], [x1, y1]],
/// where x0 is the minimum x-value, y0 is the minimum y-value, x1 is the maximum x-value, and y1 is the maximum y-value.
/// For an x-brush, it must be defined as [x0, x1]; for a y-brush, it must be defined as [y0, y1].
/*export type BrushSelection = [[number, number], [number, number]] | [number, number];*/
@anonymous
@JS()
abstract class BrushBehavior<Datum> {
  external void call(Selection<GElement, Datum, dynamic, dynamic> group,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  /*external void move(Selection<GElement,Datum,dynamic,dynamic> group, Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num> selection);*/
  /*external void move(Selection<GElement,Datum,dynamic,dynamic> group, ValueFn<GElement,Datum,Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>> selection);*/
  /*external void move(TransitionLike<GElement,Datum> group, Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num> selection);*/
  /*external void move(TransitionLike<GElement,Datum> group, ValueFn<GElement,Datum,Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>> selection);*/
  external void move(
      dynamic /*Selection<GElement,Datum,dynamic,dynamic>|TransitionLike<GElement,Datum>*/ group,
      dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>*/ selection);
  /*external ValueFn<GElement,Datum,Tuple of <Tuple of <num,num>,Tuple of <num,num>>> extent();*/
  /*external BrushBehavior extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  /*external BrushBehavior extent(ValueFn<GElement,Datum,Tuple of <Tuple of <num,num>,Tuple of <num,num>>> extent);*/
  external BrushBehavior extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external ValueFn<GElement, Datum, bool> filter();*/
  /*external BrushBehavior filter(ValueFn<GElement, Datum, bool> filterFn);*/
  external BrushBehavior filter([filterFn]);
  /*external num handleSize();*/
  /*external BrushBehavior handleSize(num size);*/
  external dynamic /*num|BrushBehavior*/ handleSize([num size]);
  /*external ValueFn<GElement, Datum, Null> on(String typenames);*/
  /*external BrushBehavior on(String typenames, Null callback);*/
  /*external BrushBehavior on(
    String typenames, ValueFn<GElement, Datum, Null> callback);*/
  external BrushBehavior on(String typenames, [callback]);
}

@JS()
external BrushBehavior<dynamic/*=Datum*/ > brush/*<Datum>*/();
@JS()
external BrushBehavior<dynamic/*=Datum*/ > brushX/*<Datum>*/();
@JS()
external BrushBehavior<dynamic/*=Datum*/ > brushY/*<Datum>*/();
@JS()
external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>*/ brushSelection(
    GElement node);

@anonymous
@JS()
abstract class D3BrushEvent<Datum> {
  external BrushBehavior<Datum> get target;
  external set target(BrushBehavior<Datum> v);
  external String /*'start'|'brush'|'end'|String*/ get type;
  external set type(String /*'start'|'brush'|'end'|String*/ v);
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>*/ get selection;
  external set selection(
      dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>*/ v);
  external dynamic get sourceEvent;
  external set sourceEvent(dynamic v);
  external factory D3BrushEvent(
      {BrushBehavior<Datum> target,
      String /*'start'|'brush'|'end'|String*/ type,
      dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Tuple of <num,num>*/ selection,
      dynamic sourceEvent});
}
