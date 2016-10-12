@JS("d3")
library d3_format;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-format module v1.0.2
/// Project: https://github.com/d3/d3-format/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// Specification of locale to use when creating a new FormatLocaleObject
@anonymous
@JS()
abstract class FormatLocaleDefinition {
  /// The decimal point (e.g., ".")
  external String /*'.'|','*/ get decimal;
  external set decimal(String /*'.'|','*/ v);

  /// The group separator (e.g., ","). Note that the thousands property is a misnomer, as\
  /// the grouping definition allows groups other than thousands.
  external String /*'.'|','*/ get thousands;
  external set thousands(String /*'.'|','*/ v);

  /// The array of group sizes (e.g., [3]), cycled as needed.
  external List<num> get grouping;
  external set grouping(List<num> v);

  /// The currency prefix and suffix (e.g., ["$", ""])
  external List<String> /*Tuple of <String,String>*/ get currency;
  external set currency(List<String> /*Tuple of <String,String>*/ v);
  external factory FormatLocaleDefinition(
      {String /*'.'|','*/ decimal,
      String /*'.'|','*/ thousands,
      List<num> grouping,
      List<String> /*Tuple of <String,String>*/ currency});
}

@anonymous
@JS()
abstract class FormatLocaleObject {
  /// Returns a new format function for the given string specifier. The returned function
  /// takes a number as the only argument, and returns a string representing the formatted number.
  external Func1<num, String> format(String specifier);

  /// Returns a new format function for the given string specifier. The returned function
  /// takes a number as the only argument, and returns a string representing the formatted number.
  /// The returned function will convert values to the units of the appropriate SI prefix for the
  /// specified numeric reference value before formatting in fixed point notation.
  external Func1<num, String> formatPrefix(String specifier, num value);
}

@anonymous
@JS()
abstract class FormatSpecifier {
  external String get fill;
  external set fill(String v);
  external String get align;
  external set align(String v);
  external String get sign;
  external set sign(String v);
  external String get symbol;
  external set symbol(String v);
  external bool get zero;
  external set zero(bool v);
  external num get width;
  external set width(num v);
  external bool get comma;
  external set comma(bool v);
  external num get precision;
  external set precision(num v);
  external String get type;
  external set type(String v);
  external String toString();
}

/// Create a new locale-based object which exposes format(...) and formatPrefix(...)
/// methods for the specified locale.
@JS()
external FormatLocaleObject formatLocale(FormatLocaleDefinition locale);

/// Create a new locale-based object which exposes format(...) and formatPrefix(...)
/// methods for the specified locale definition. The specified locale definition will be
/// set as the new default locale definition.
@JS()
external FormatLocaleObject formatDefaultLocale(
    FormatLocaleDefinition defaultLocale);

/// Returns a new format function for the given string specifier. The returned function
/// takes a number as the only argument, and returns a string representing the formatted number.
/// Uses the current default locale.
@JS()
external Func1<num, String> format(String specifier);

/// Returns a new format function for the given string specifier. The returned function
/// takes a number as the only argument, and returns a string representing the formatted number.
/// The returned function will convert values to the units of the appropriate SI prefix for the
/// specified numeric reference value before formatting in fixed point notation.
/// Uses the current default locale.
@JS()
external Func1<num, String> formatPrefix(String specifier, num value);

/// Parses the specified specifier, returning an object with exposed fields that correspond to the
/// format specification mini-language and a toString method that reconstructs the specifier.
@JS()
external FormatSpecifier formatSpecifier(String specifier);

/// Returns a suggested decimal precision for fixed point notation given the specified numeric step value.
/// (This assumes that the values to be formatted are also multiples of step.)
@JS()
external num precisionFixed(num step);

/// Returns a suggested decimal precision for use with locale.formatPrefix given the specified
/// numeric step and reference value.
/// (This assumes that the values to be formatted are also multiples of step.)
@JS()
external num precisionPrefix(num step, num value);

/// Returns a suggested decimal precision for format types that round to significant digits
/// given the specified numeric step and max values.
/// (This assumes that the values to be formatted are also multiples of step.)
@JS()
external num precisionRound(num step, num max);
