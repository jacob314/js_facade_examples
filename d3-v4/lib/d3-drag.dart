@JS("d3")
library d3_drag;

import "package:js/js.dart";
import "d3-selection.dart";
import "dart:html";
import "dart:svg";

/// Type definitions for D3JS d3-drag module v1.0.1
/// Project: https://github.com/d3/d3-drag/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
import "d3-selection.dart" show ArrayLike, Selection, ValueFn;

/// --------------------------------------------------------------------------
/// Shared Type Definitions and Interfaces
/// --------------------------------------------------------------------------

/// DraggedElementBaseType serves as an alias for the 'minimal' data type which can be selected
/// without 'd3-drag' (and related code in 'd3-selection') trying to use properties internally which would otherwise not
/// be supported.
/*export type DraggedElementBaseType = Element;*/

/// Container element type usable for mouse/touch functions
/*export type DragContainerElement = HTMLElement | SVGSVGElement | SVGGElement;*/

/// The subject datum should at a minimum expose x and y properties, so that the relative position
/// of the subject and the pointer can be preserved during the drag gesture.
@anonymous
@JS()
abstract class SubjectPosition {
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external factory SubjectPosition({num x, num y});
}

@anonymous
@JS()
abstract class DragBehavior<GElement extends Element, Datum, Subject>
    implements Function {
  external void call(Selection<GElement, Datum, dynamic, dynamic> selection,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  /*external ValueFn<GElement,Datum,HtmlElement|SvgSvgElement|GElement> container();*/
  /*external DragBehavior container(ValueFn<GElement,Datum,HtmlElement|SvgSvgElement|GElement> accessor);*/
  /*external DragBehavior container(HtmlElement|SvgSvgElement|GElement container);*/
  external DragBehavior container(
      [dynamic /*HtmlElement|SvgSvgElement|GElement*/ accessor_container]);
  /*external ValueFn<GElement, Datum, bool> filter();*/
  /*external DragBehavior filter(ValueFn<GElement, Datum, bool> filterFn);*/
  external DragBehavior filter([filterFn]);
  /*external ValueFn<GElement, Datum, Subject> subject();*/
  /*external DragBehavior subject(ValueFn<GElement, Datum, Subject> accessor);*/
  external DragBehavior subject([accessor]);
  /*external ValueFn<GElement, Datum, Null> on(String typenames);*/
  /*external DragBehavior on(String typenames, Null callback);*/
  /*external DragBehavior on(
    String typenames, ValueFn<GElement, Datum, Null> callback);*/
  external DragBehavior on(String typenames, [callback]);
}

/*external DragBehavior<GElement,Datum,Datum|SubjectPosition> drag<GElement extends Element, Datum>();*/
/*external DragBehavior<GElement,Datum,Subject> drag<GElement extends Element, Datum, Subject>();*/
@JS()
external DragBehavior<dynamic, dynamic,
    dynamic> /*DragBehavior<GElement,Datum,Datum|SubjectPosition>|DragBehavior<GElement,Datum,Subject>*/ drag/*<GElement extends Element, Datum, Subject>*/();

@anonymous
@JS()
abstract class D3DragEvent<GElement extends Element, Datum, Subject> {
  external DragBehavior<GElement, Datum, Subject> get target;
  external set target(DragBehavior<GElement, Datum, Subject> v);
  external String /*'start'|'drag'|'end'|String*/ get type;
  external set type(String /*'start'|'drag'|'end'|String*/ v);
  external Subject get subject;
  external set subject(Subject v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get dx;
  external set dx(num v);
  external num get dy;
  external set dy(num v);
  external dynamic /*'mouse'|num*/ get identifier;
  external set identifier(dynamic /*'mouse'|num*/ v);
  external num get active;
  external set active(num v);
  external dynamic get sourceEvent;
  external set sourceEvent(dynamic v);
  /*external ValueFn<GElement, Datum, Null> on(String typenames);*/
  /*external D3DragEvent on(String typenames, Null callback);*/
  /*external D3DragEvent on(
    String typenames, ValueFn<GElement, Datum, Null> callback);*/
  external D3DragEvent on(String typenames, [callback]);
}

@JS()
external void dragDisable(Window window);
@JS()
external void dragEnable(Window window, [bool noClick]);
