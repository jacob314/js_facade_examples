@JS("d3")
library d3_transition;

import "package:js/js.dart";
import "d3-selection.dart";
import "dart:html";
import "package:func/func.dart";

/// Type definitions for D3JS d3-transition module v1.0.1
/// Project: https://github.com/d3/d3-transition/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
import "d3-selection.dart" show ArrayLike, Selection, ValueFn;

/// Extend interface 'Selection' by declaration merging with 'd3-selection'

// Library augmentation not allowed by Dart. Ignoring augmentation of ../d3-selection
@JS()
external Transition<dynamic, dynamic, dynamic,
    dynamic> /*Transition<GElement,Datum,PElement,PDatum>|Null*/ active/*<GElement extends Element|EnterElement|Window, Datum, PElement extends Element|EnterElement|Window, PDatum>*/(dynamic/*=GElement*/ node, [String name]);
@JS()
external void interrupt(dynamic /*Element|EnterElement|Window*/ node,
    [String name]);

@anonymous
@JS()
abstract class Transition<
    GElement extends dynamic /*Element|EnterElement|Window*/,
    Datum,
    PElement extends dynamic /*Element|EnterElement|Window*/,
    PDatum> {
  /// Sub-selection -------------------------
  /*external Transition<DescElement,Datum,PElement,PDatum> select<DescElement extends Element|EnterElement|Window>(String selector);*/
  /*external Transition<DescElement,Datum,PElement,PDatum> select<DescElement extends Element|EnterElement|Window>(ValueFn<GElement,Datum,DescElement> selector);*/
  external Transition<dynamic/*=DescElement*/, Datum, PElement, PDatum>
      select/*<DescElement>*/(String selector);

  /// NB: while the empty selections (null or undefined selector) are defined on the underlying object, they should not be exposed in the type definition API
  /// as they are meaningless on transitions.)
  /// selectAll(): Transition<undefined, undefined, GElement, Datum>; // _groups are set to empty array, first generic type is set to undefined by convention
  /// selectAll(selector: null): Transition<undefined, undefined, GElement, Datum>; // _groups are set to empty array, first generic type is set to undefined by convention
  /*external Transition<DescElement,OldDatum,GElement,Datum> selectAll<DescElement extends Element|EnterElement|Window, OldDatum>(String selector);*/
  /*external Transition<DescElement,OldDatum,GElement,Datum> selectAll<DescElement extends Element|EnterElement|Window, OldDatum>(ValueFn<GElement,Datum,List<DescElement>|ArrayLike<DescElement>> selector);*/
  external Transition<dynamic/*=DescElement*/, dynamic/*=OldDatum*/, GElement,
      Datum> selectAll/*<DescElement, OldDatum>*/(String selector);
  external Selection<GElement, Datum, PElement, PDatum> selection();
  external Transition<GElement, Datum, PElement, PDatum> transition();

  /// Modifying -------------------------------
  /*external Transition attr(String name, Null value);*/
  /*external Transition attr(String name, String|num|bool value);*/
  /*external Transition attr(String name, ValueFn<GElement,Datum,String|num|bool> value);*/
  external Transition attr(String name, dynamic /*String|num|bool*/ value);
  external Transition attrTween(
      String name,
      ValueFn<GElement, Datum,
          Func1<num, dynamic /*String|num|bool*/ >> tweenFn);
  /*external Transition style(String name, Null value);*/
  /*external Transition style(String name, String|num|bool value, [Null|'important' priority]);*/
  /*external Transition style(String name, ValueFn<GElement,Datum,String|num|bool> value, [Null|'important' priority]);*/
  external Transition style(String name, dynamic /*String|num|bool*/ value,
      [String /*'important'*/ priority]);
  external Transition styleTween(
      String name,
      ValueFn<GElement, Datum,
          Func1<num, dynamic /*String|num|bool*/ >> tweenFn,
      [String /*Null|'important'*/ priority]);
  /*external Transition text(Null value);*/
  /*external Transition text(String|num|bool value);*/
  /*external Transition text(ValueFn<GElement,Datum,String|num|bool> value);*/
  external Transition text(dynamic /*String|num|bool*/ value);
  /*external ValueFn<GElement, Datum, VoidFunc1<num>> tween(String name);*/
  /*external Transition tween(String name, Null tweenFn);*/
  /*external Transition tween(
    String name, ValueFn<GElement, Datum, VoidFunc1<num>> tweenFn);*/
  external Transition tween(String name, [tweenFn]);
  external Transition remove();
  external Transition<GElement, Datum, PElement, PDatum> merge(
      Transition<GElement, Datum, PElement, PDatum> other);
  /*external Transition filter(String filter);*/
  /*external Transition filter(ValueFn<GElement, Datum, bool> filter);*/
  external Transition filter(String filter);

  /// Event Handling -------------------
  /*external ValueFn<GElement, Datum, Null> on(String type);*/
  /*external Transition on(String type, Null listener);*/
  /*external Transition on(String type, ValueFn<GElement, Datum, Null> listener);*/
  external Transition on(String type, [listener]);

  /// Control Flow ----------------------
  external Transition each(ValueFn<GElement, Datum, Null> valueFn);
  external Transition JS$call(
      Function /*(transition: Transition<GElement, Datum, PElement, PDatum>, ...args: any[]) => any*/ func,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external bool empty();
  external GElement node();
  external List<GElement> nodes();
  external num size();

  /// Transition Configuration ----------------------
  /*external num delay();*/
  /*external Transition delay(num milliseconds);*/
  external dynamic /*num|Transition*/ delay([num milliseconds]);
  /*external num duration();*/
  /*external Transition duration(num milliseconds);*/
  external dynamic /*num|Transition*/ duration([num milliseconds]);
  /*external Func1<num, num> ease();*/
  /*external Transition ease(num easingFn(num normalizedTime));*/
  external dynamic /*Func1<num, num>|Transition*/ ease(
      [num easingFn(num normalizedTime)]);
}

/*external Transition<HtmlElement, dynamic, Null, dynamic> transition(
    String name);*/
/*external Transition<GElement,Datum,PElement,PDatum> transition<GElement extends Element|EnterElement|Window, Datum, PElement extends Element|EnterElement|Window, PDatum>(Transition<GElement,Datum,PElement,PDatum> transition);*/
@JS()
external Transition /*Transition<HtmlElement,dynamic,Null,dynamic>|Transition<GElement,Datum,PElement,PDatum>*/ transition/*<GElement, Datum, PElement, PDatum>*/(
    dynamic /*String|Transition<GElement,Datum,PElement,PDatum>*/ name_transition);
