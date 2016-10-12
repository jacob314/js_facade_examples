@JS("d3")
library d3_selection;

import "package:js/js.dart";
import "dart:html";
import "package:func/func.dart";
import "dart:svg";

/// Type definitions for D3JS d3-selection module v1.0.2
/// Project: https://github.com/d3/d3-selection/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// --------------------------------------------------------------------------
/// Shared Type Definitions and Interfaces
/// --------------------------------------------------------------------------

/// BaseType serves as an alias for the 'minimal' data type which can be selected
/// without 'd3-selection' trying to use properties internally which would otherwise not
/// be supported.
/*export type BaseType = Element | EnterElement | Window;*/
/// export type BaseType = any; // Alternative, very permissive BaseType specification for edge cases
@anonymous
@JS()
abstract class ArrayLike<T> {
  external num get length;
  external set length(num v);
  external T item(
      num index); /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class EnterElement {
  external Document get ownerDocument;
  external set ownerDocument(Document v);
  external String get namespaceURI;
  external set namespaceURI(String v);
  external Node appendChild(Node newChild);
  external Node insertBefore(Node newChild, Node refChild);
  external Element querySelector(String selectors);
  external NodeListOf<Element> querySelectorAll(String selectors);
}

/// Container element type usable for mouse/touch functions
/*export type ContainerElement = HTMLElement | SVGSVGElement | SVGGElement;*/

/// Type for optional parameters map, when dispatching custom events
/// on a selection
@anonymous
@JS()
abstract class CustomEventParameters {
  /// If true, the event is dispatched to ancestors in reverse tree order
  external bool get bubbles;
  external set bubbles(bool v);

  /// If true, event.preventDefault is allowed
  external bool get cancelable;
  external set cancelable(bool v);

  /// Any custom data associated with the event
  external dynamic get detail;
  external set detail(dynamic v);
  external factory CustomEventParameters(
      {bool bubbles, bool cancelable, dynamic detail});
}

/// Callback type for selections and transitions
typedef Result ValueFn<Element, Datum, Result>(/*Element this*/ Datum datum,
    num index, dynamic /*List<Element>|ArrayLike<Element>*/ groups);

/// TransitionLike is a helper interface to represent a quasi-Transition, without specifying the full Transition  interface in this file.
/// For example, whereever d3-zoom allows a Transition to be passed in as an argument, it internally immediately invokes its `selection()`
/// method to retrieve the underlying Selection object before proceeding.
/// d3-brush uses a subset of Transition methods internally.
/// The use of this interface instead of the full imported Transition interface is [referred] to achieve
/// two things:
/// (1) the d3-transition module may not be required by a projects use case,
/// (2) it avoid avoids possible complications from 'module augmentation' from d3-transition to Selection.
@anonymous
@JS()
abstract class TransitionLike<
    GElement extends dynamic /*Element|EnterElement|Window*/, Datum> {
  external Selection<GElement, Datum, dynamic, dynamic> selection();
  /*external TransitionLike<GElement, Datum> on(String type, Null listener);*/
  /*external TransitionLike<GElement, Datum> on(
    String type, ValueFn<GElement, Datum, Null> listener);*/
  external TransitionLike<GElement, Datum> on(String type, listener);
  /*external TransitionLike<GElement, Datum> tween(String name, Null tweenFn);*/
  /*external TransitionLike<GElement, Datum> tween(
    String name, ValueFn<GElement, Datum, VoidFunc1<num>> tweenFn);*/
  external TransitionLike<GElement, Datum> tween(String name, tweenFn);
}

/// --------------------------------------------------------------------------
/// All Selection related interfaces and function
/// --------------------------------------------------------------------------
/// NB: Note that, d3.select does not generate the same parent element, when targeting the same DOM element with string selector
/// or node element
/*external Selection<GElement,OldDatum,HtmlElement,dynamic> select<GElement extends Element|EnterElement|Window, OldDatum>(String selector);*/
/*external Selection<GElement,OldDatum,Null,dynamic> select<GElement extends Element|EnterElement|Window, OldDatum>(GElement node);*/
@JS()
external Selection /*Selection<GElement,OldDatum,HtmlElement,dynamic>|Selection<GElement,OldDatum,Null,dynamic>*/ select/*<GElement, OldDatum>*/(
    dynamic /*String|GElement*/ selector_node);
/*external Selection<Null, dynamic, Null, dynamic> selectAll();*/
/*external Selection<Null, dynamic, Null, dynamic> selectAll(Null selector);*/
/*external Selection<GElement,OldDatum,HtmlElement,dynamic> selectAll<GElement extends Element|EnterElement|Window, OldDatum>(String selector);*/
/*external Selection<GElement,OldDatum,Null,dynamic> selectAll<GElement extends Element|EnterElement|Window, OldDatum>(List<GElement> nodes);*/
/*external Selection<GElement,OldDatum,Null,dynamic> selectAll<GElement extends Element|EnterElement|Window, OldDatum>(ArrayLike<GElement> nodes);*/
@JS()
external Selection /*Selection<Null,dynamic,Null,dynamic>|Selection<GElement,OldDatum,HtmlElement,dynamic>|Selection<GElement,OldDatum,Null,dynamic>*/ selectAll/*<GElement, OldDatum>*/(
    [dynamic /*String|List<GElement>|ArrayLike<GElement>*/ selector_nodes]);

@anonymous
@JS()
abstract class Selection<
    GElement extends dynamic /*Element|EnterElement|Window*/,
    Datum,
    PElement extends dynamic /*Element|EnterElement|Window*/,
    PDatum> {
  /// Sub-selection -------------------------
  /*external Selection<DescElement,Datum,PElement,PDatum> select<DescElement extends Element|EnterElement|Window>(String selector);*/
  /*external Selection<Null,dynamic,PElement,PDatum> select<DescElement extends Element|EnterElement|Window>(Null selector);*/
  /*external Selection<DescElement,Datum,PElement,PDatum> select<DescElement extends Element|EnterElement|Window>(ValueFn<GElement,Datum,DescElement> selector);*/
  external Selection /*Selection<DescElement,Datum,PElement,PDatum>|Selection<Null,dynamic,PElement,PDatum>*/ select/*<DescElement>*/(
      String selector);
  /*external Selection<Null, dynamic, GElement, Datum> selectAll();*/
  /*external Selection<Null, dynamic, GElement, Datum> selectAll(Null selector);*/
  /*external Selection<DescElement,OldDatum,GElement,Datum> selectAll<DescElement extends Element|EnterElement|Window, OldDatum>(String selector);*/
  /*external Selection<DescElement,OldDatum,GElement,Datum> selectAll<DescElement extends Element|EnterElement|Window, OldDatum>(ValueFn<GElement,Datum,List<DescElement>|ArrayLike<DescElement>> selector);*/
  external Selection /*Selection<Null,dynamic,GElement,Datum>|Selection<DescElement,OldDatum,GElement,Datum>*/ selectAll/*<DescElement, OldDatum>*/(
      [String selector]);

  /// Modifying -------------------------------
  /*external String attr(String name);*/
  /*external Selection attr(String name, Null value);*/
  /*external Selection attr(String name, String|num|bool value);*/
  /*external Selection attr(String name, ValueFn<GElement,Datum,String|num|bool> value);*/
  external dynamic /*String|Selection*/ attr(String name,
      [dynamic /*String|num|bool*/ value]);
  /*external bool classed(String name);*/
  /*external Selection classed(String name, bool value);*/
  /*external Selection classed(String name, ValueFn<GElement, Datum, bool> value);*/
  external dynamic /*bool|Selection*/ classed(String name, [bool value]);
  /*external String style(String name);*/
  /*external Selection style(String name, Null value);*/
  /*external Selection style(String name, String|num|bool value, [Null|'important' priority]);*/
  /*external Selection style(String name, ValueFn<GElement,Datum,String|num|bool> value, [Null|'important' priority]);*/
  external dynamic /*String|Selection*/ style(String name,
      [dynamic /*String|num|bool*/ value, String /*'important'*/ priority]);
  /*external dynamic property(String name);*/
  /// Look up a local variable on the first node of this selection. Note that this is not equivalent to `local.get(selection.node())` in that it will not look up locals set on the parent node(s).
  /*external T|dynamic property<T>(Local<T> name);*/
  /*external Selection property(
    String name, ValueFn<GElement, Datum, dynamic> value);*/
  /*external Selection property(String name, Null value);*/
  /*external Selection property(String name, dynamic value);*/
  /// Store a value in a `d3.local` variable. This is equivalent to `selection.each(function (d, i, g) { name.set(this, value.call(this, d, i, g)); })` but more concise.
  /*external Selection property<T>(Local<T> name, ValueFn<GElement,Datum,T> value);*/
  /// Store a value in a `d3.local` variable for each node in the selection. This is equivalent to `selection.each(function () { name.set(this, value); })` but more concise.
  /*external Selection property<T>(Local<T> name, T value);*/
  external dynamic /*dynamic|T|Selection*/ property/*<T>*/(
      dynamic /*String|Local<T>*/ name,
      [dynamic /*dynamic|T*/ value]);
  /*external String text();*/
  /*external Selection text(String|num|bool value);*/
  /*external Selection text(ValueFn<GElement,Datum,String|num|bool> value);*/
  external dynamic /*String|Selection*/ text(
      [dynamic /*String|num|bool*/ value]);
  /*external String html();*/
  /*external Selection html(String value);*/
  /*external Selection html(ValueFn<GElement, Datum, String> value);*/
  external dynamic /*String|Selection*/ html([String value]);
  /*external Selection<ChildElement,Datum,PElement,PDatum> append<ChildElement extends Element|EnterElement|Window>(String type);*/
  /*external Selection<ChildElement,Datum,PElement,PDatum> append<ChildElement extends Element|EnterElement|Window>(ValueFn<GElement,Datum,ChildElement> type);*/
  external Selection<dynamic/*=ChildElement*/, Datum, PElement, PDatum>
      append/*<ChildElement>*/(String type);
  /*external Selection<ChildElement,Datum,PElement,PDatum> insert<ChildElement extends Element|EnterElement|Window>(String type, String before);*/
  /*external Selection<ChildElement,Datum,PElement,PDatum> insert<ChildElement extends Element|EnterElement|Window>(ValueFn<GElement,Datum,ChildElement> type, String before);*/
  /*external Selection<ChildElement,Datum,PElement,PDatum> insert<ChildElement extends Element|EnterElement|Window>(String type, ValueFn<GElement,Datum,Element|EnterElement|Window> before);*/
  /*external Selection<ChildElement,Datum,PElement,PDatum> insert<ChildElement extends Element|EnterElement|Window>(ValueFn<GElement,Datum,ChildElement> type, ValueFn<GElement,Datum,Element|EnterElement|Window> before);*/
  external Selection<dynamic/*=ChildElement*/, Datum, PElement, PDatum>
      insert/*<ChildElement>*/(String type, String before);

  /// Removes the selected elements from the document.
  /// Returns this selection (the removed elements) which are now detached from the DOM.
  external Selection remove();
  external Selection<GElement, Datum, PElement, PDatum> merge(
      Selection<GElement, Datum, PElement, PDatum> other);
  /*external Selection filter(String selector);*/
  /*external Selection filter(ValueFn<GElement, Datum, bool> selector);*/
  external Selection filter(String selector);
  external Selection sort([num comparator(Datum a, Datum b)]);
  external Selection order();
  external Selection raise();
  external Selection lower();

  /// Data Join ---------------------------------
  /*external Datum datum();*/
  /*external Selection<GElement, dynamic, PElement, PDatum> datum(Null value);*/
  /*external Selection<GElement,NewDatum,PElement,PDatum> datum<NewDatum>(ValueFn<GElement,Datum,NewDatum> value);*/
  /*external Selection<GElement,NewDatum,PElement,PDatum> datum<NewDatum>(NewDatum value);*/
  external dynamic /*Datum|Selection<GElement,dynamic,PElement,PDatum>|Selection<GElement,NewDatum,PElement,PDatum>*/ datum/*<NewDatum>*/(
      [dynamic/*=NewDatum*/ value]);
  /*external List<Datum> data();*/
  /*external Selection<GElement,NewDatum,PElement,PDatum> data<NewDatum>(List<NewDatum> data, [ValueFn<GElement|PElement,Datum|NewDatum,String> key]);*/
  /*external Selection<GElement,NewDatum,PElement,PDatum> data<NewDatum>(ValueFn<PElement,PDatum,List<NewDatum>> data, [ValueFn<GElement|PElement,Datum|NewDatum,String> key]);*/
  external dynamic /*List<Datum>|Selection<GElement,NewDatum,PElement,PDatum>*/ data/*<NewDatum>*/(
      [List<dynamic/*=NewDatum*/ > data, key]);
  external Selection<EnterElement, Datum, PElement, PDatum> enter();

  /// The type Datum on the exit items is actually of the type prior to calling data(...), as by definition, no new data of type NewDatum exists for these
  /// elements. Due to the chaining, .data(...).exit(...), however, the definition would imply that the exit group elements have assumed the NewDatum type.
  /// This seems to imply the following workaroud: Recast the exit Selection to OldDatum, if needed, or ommit and allow exit group elements to be of type any.
  external Selection<GElement, dynamic/*=OldDatum*/, PElement, PDatum>
      exit/*<OldDatum>*/();

  /// Event Handling -------------------
  /*external ValueFn<GElement, Datum, Null> on(String type);*/
  /*external Selection on(String type, Null listener);*/
  /*external Selection on(String type, ValueFn<GElement, Datum, Null> listener,
    [bool capture]);*/
  external Selection on(String type, [listener, bool capture]);
  /*external Selection dispatch(String type, [CustomEventParameters parameters]);*/
  /*external Selection dispatch(String type,
    [ValueFn<GElement, Datum, CustomEventParameters> parameters]);*/
  external Selection dispatch(String type, [parameters]);

  /// Control Flow ----------------------
  external Selection each(ValueFn<GElement, Datum, Null> valueFn);
  external Selection JS$call(
      Function /*(selection: Selection<GElement, Datum, PElement, PDatum>, ...args: any[]) => void*/ func,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external bool empty();
  external GElement node();
  external List<GElement> nodes();
  external num size();
}

typedef Selection<HtmlElement, dynamic, Null, dynamic> SelectionFn();
@JS()
external SelectionFn get selection;
@JS()
external set selection(SelectionFn v);

/// ---------------------------------------------------------------------------
/// on.js event and customEvent related
/// ---------------------------------------------------------------------------

/// See issue #3 (https://github.com/tomwanzek/d3-v4-definitelytyped/issues/3)
@anonymous
@JS()
abstract class BaseEvent {
  external String get type;
  external set type(String v);
  external dynamic get sourceEvent;
  external set sourceEvent(dynamic v);
  external factory BaseEvent({String type, dynamic sourceEvent});
}

@JS()
external dynamic get event;
@JS()
external set event(dynamic v);
@JS()
external dynamic/*=Result*/ customEvent/*<Context, Result>*/(
    BaseEvent event,
    Function /*(this: Context, ...args: any[]) => Result*/ listener,
    dynamic/*=Context*/ that,
    [dynamic args1,
    dynamic args2,
    dynamic args3,
    dynamic args4,
    dynamic args5]);

/// ---------------------------------------------------------------------------
/// mouse.js related
/// ---------------------------------------------------------------------------

/// Get (x, y)-coordinates of the current event relative to the specified container element.
/// The coordinates are returned as a two-element array of numbers [x, y].
@JS()
external List<num> /*Tuple of <num,num>*/ mouse(
    dynamic /*HtmlElement|SvgSvgElement|GElement*/ container);

/// ---------------------------------------------------------------------------
/// touch.js and touches.js related
/// ---------------------------------------------------------------------------
/*external Tuple of <num,num> touch(HtmlElement|SvgSvgElement|GElement container, num identifier);*/
/*external Tuple of <num,num> touch(HtmlElement|SvgSvgElement|GElement container, TouchList touches, num identifier);*/
@JS()
external List<num> /*Tuple of <num,num>*/ touch(
    dynamic /*HtmlElement|SvgSvgElement|GElement*/ container,
    dynamic /*num|TouchList*/ identifier_touches,
    [num identifier]);
@JS()
external List<List<num> /*Tuple of <num,num>*/ > touches(
    dynamic /*HtmlElement|SvgSvgElement|GElement*/ container,
    [TouchList touches]);

/// ---------------------------------------------------------------------------
/// local.js related
/// ---------------------------------------------------------------------------
@anonymous
@JS()
abstract class Local<T> {
  /// Retrieves a local variable stored on the node (or one of its parents).
  external dynamic /*T|dynamic*/ JS$get(Element node);

  /// Deletes the value associated with the given node. Values stored on ancestors are not affected, meaning that child nodes will still see inherited values.
  /// This function returns true if there was a value stored directly on the node, and false otherwise.
  external bool remove(Element node);

  /// Store a value for this local variable. Calling `.get()` on children of this node will also retrieve the variable's value.
  external Element JS$set(Element node, T value);

  /// Obtain a string with the internally assigned property name for the local
  /// which is used to store the value on a node
  external String toString();
}

/// Obtain a new local variable
@JS()
external Local<dynamic/*=T*/ > local/*<T>*/();

/// ---------------------------------------------------------------------------
/// namespace.js related
/// ---------------------------------------------------------------------------

/// Type for object literal containing local name with related fully qualified namespace
@anonymous
@JS()
abstract class NamespaceLocalObject {
  /// Fully qualified namespace
  external String get space;
  external set space(String v);

  /// Name of the local to be namespaced.
  external String get local;
  external set local(String v);
  external factory NamespaceLocalObject({String space, String local});
}

/// Obtain an object with properties of fully qualified namespace string and
/// name of local by parsing a shorthand string "prefix:local". If the prefix
/// does not exist in the "namespaces" object provided by d3-selection, then
/// the local name is returned as a simple string.
/// name separated by colon, e.g. "svg:text".
@JS()
external String /*NamespaceLocalObject|String*/ namespace(String prefixedLocal);

/// ---------------------------------------------------------------------------
/// namespaces.js related
/// ---------------------------------------------------------------------------

/// Type for maps of namespace prefixes to corresponding fully qualified namespace strings
@anonymous
@JS()
abstract class NamespaceMap {
  /* Index signature is not yet supported by JavaScript interop. */
}

/// Map of namespace prefixes to corresponding fully qualified namespace strings
@JS()
external NamespaceMap get namespaces;
@JS()
external set namespaces(NamespaceMap v);

/// ---------------------------------------------------------------------------
/// window.js related
/// ---------------------------------------------------------------------------
@JS()
external Window window(dynamic /*Window|Document|Element*/ DOMNode);

/// ---------------------------------------------------------------------------
/// creator.js and matcher.js Complex helper closure generating functions
/// for explicit bound-context dependent use
/// ---------------------------------------------------------------------------

/// Returns a closure structure which can be invoked in the 'this' context
/// of a group element. Depending on the use of namespacing, the NewGElement can be HTMLElement,
/// SVGElement an extension thereof or an element from a different namespace.
@JS()
external Func0<dynamic/*=NewGElement*/ >
    creator/*<NewGElement extends Element>*/(String elementName);

/// Returns a closure structure which can be invoked in the 'this' context
/// of a group element. Returns true, if the element in the 'this' context matches the selector
@JS()
external Func0<bool> matcher/*<GElement extends Element>*/(String selector);

/// ----------------------------------------------------------------------------
/// selector.js and selectorAll.js related functions
/// ----------------------------------------------------------------------------
@JS()
external Func0<dynamic/*=DescElement*/ >
    selector/*<DescElement extends Element>*/(String selector);
@JS()
external Func0<NodeListOf<dynamic/*=DescElement*/ >>
    selectorAll/*<DescElement extends Element>*/(String selector);
