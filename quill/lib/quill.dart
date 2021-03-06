@JS()
library quill;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for Quill v1.0.3
/// Project: http://quilljs.com
/// Definitions by: Sumit <https://github.com/sumitkm>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

// Module QuillJS
@anonymous
@JS()
abstract class QuillOptionsStatic {
  external String get debug;
  external set debug(String v);
  external dynamic /*JSMap of <String,dynamic>*/ get modules;
  external set modules(dynamic /*JSMap of <String,dynamic>*/ v);
  external String get placeholder;
  external set placeholder(String v);
  external bool get readOnly;
  external set readOnly(bool v);
  external String get theme;
  external set theme(String v);
  external factory QuillOptionsStatic(
      {String debug,
      dynamic /*JSMap of <String,dynamic>*/ modules,
      String placeholder,
      bool readOnly,
      String theme});
}

@anonymous
@JS()
abstract class BoundsStatic {
  external num get left;
  external set left(num v);
  external num get top;
  external set top(num v);
  external num get height;
  external set height(num v);
  external num get width;
  external set width(num v);
  external factory BoundsStatic({num left, num top, num height, num width});
}

@anonymous
@JS()
abstract class DeltaStatic {
  external List<dynamic> get ops;
  external set ops(List<dynamic> v);
  external dynamic get retain;
  external set retain(dynamic v);
  external dynamic get delete;
  external set delete(dynamic v);
  external dynamic get insert;
  external set insert(dynamic v);
  external dynamic get attributes;
  external set attributes(dynamic v);
  external factory DeltaStatic(
      {List<dynamic> ops,
      dynamic retain,
      dynamic delete,
      dynamic insert,
      dynamic attributes});
}

@anonymous
@JS()
abstract class RangeStatic {
  external factory RangeStatic();
  external num get index;
  external set index(num v);
  external num get length;
  external set length(num v);
}

@anonymous
@JS("Quill")
abstract class QuillStatic {
  external factory QuillStatic(String selector, [QuillOptionsStatic options]);
  external void deleteText(num start, num end,
      [String /*'api'|'user'|'silent'*/ source]);
  external void disable();
  external void enable([bool enabled]);
  external DeltaStatic getContents([num start, num end]);
  external num getLength();
  external String getText([num start, num end]);
  external void insertEmbed(num index, String type, String url,
      [String /*'api'|'user'|'silent'*/ source]);
  /*external void insertText(num index, String text, ['api'|'user'|'silent' source]);*/
  /*external void insertText(num index, String text, String format, String value, ['api'|'user'|'silent' source]);*/
  /*external void insertText(num index, String text, JSMap of <String,dynamic> formats, ['api'|'user'|'silent' source]);*/
  external void insertText(num index, String text,
      [dynamic /*'api'|'user'|'silent'|String|JSMap of <String,dynamic>*/ source_format_formats,
      String /*String|'api'|'user'|'silent'*/ value_source,
      String /*'api'|'user'|'silent'*/ source]);
  /*external String pasteHTML(num index, String html, ['api'|'user'|'silent' source]);*/
  /*external String pasteHTML(String html, ['api'|'user'|'silent' source]);*/
  external String pasteHTML(dynamic /*num|String*/ index_html,
      [String /*String|'api'|'user'|'silent'*/ html_source,
      String /*'api'|'user'|'silent'*/ source]);
  external void setContents(DeltaStatic delta,
      [String /*'api'|'user'|'silent'*/ source]);
  external void setText(String text, [String /*'api'|'user'|'silent'*/ source]);
  external void update([String source]);
  external void updateContents(DeltaStatic delta,
      [String /*'api'|'user'|'silent'*/ source]);
  external void format(String name, dynamic value,
      [String /*'api'|'user'|'silent'*/ source]);
  /*external void formatLine(num index, num length, ['api'|'user'|'silent' source]);*/
  /*external void formatLine(num index, num length, String format, dynamic value, ['api'|'user'|'silent' source]);*/
  /*external void formatLine(num index, num length, JSMap of <String,dynamic> formats, ['api'|'user'|'silent' source]);*/
  external void formatLine(num index, num length,
      [dynamic /*'api'|'user'|'silent'|String|JSMap of <String,dynamic>*/ source_format_formats,
      dynamic /*dynamic|'api'|'user'|'silent'*/ value_source,
      String /*'api'|'user'|'silent'*/ source]);
  /*external void formatText(num index, num length, ['api'|'user'|'silent' source]);*/
  /*external void formatText(num index, num length, String format, dynamic value, ['api'|'user'|'silent' source]);*/
  /*external void formatText(num index, num length, JSMap of <String,dynamic> formats, ['api'|'user'|'silent' source]);*/
  external void formatText(num index, num length,
      [dynamic /*'api'|'user'|'silent'|String|JSMap of <String,dynamic>*/ source_format_formats,
      dynamic /*dynamic|'api'|'user'|'silent'*/ value_source,
      String /*'api'|'user'|'silent'*/ source]);
  /*external JSMap of <String,dynamic> getFormat([RangeStatic range]);*/
  /*external JSMap of <String,dynamic> getFormat(num index, [num length]);*/
  external dynamic /*JSMap of <String,dynamic>*/ getFormat(
      [dynamic /*RangeStatic|num*/ range_index, num length]);
  external void removeFormat(Number index, Number length,
      [String /*'api'|'user'|'silent'*/ source]);
  external void blur();
  external void focus();
  external BoundsStatic getBounds(num index, [num length]);
  external RangeStatic getSelection([bool focus]);
  external bool hasFocus();
  /*external void setSelection(num index, num length, ['api'|'user'|'silent' source]);*/
  /*external void setSelection(RangeStatic range, ['api'|'user'|'silent' source]);*/
  external void setSelection(dynamic /*num|RangeStatic*/ index_range,
      [dynamic /*num|'api'|'user'|'silent'*/ length_source,
      String /*'api'|'user'|'silent'*/ source]);
  external QuillStatic on(String eventName,
      dynamic /*VoidFunc3<T, T, String>|(name: string, ...args: any[]) => void*/ callback);
  external QuillStatic once(
      String eventName, void callback(DeltaStatic delta, String source));
  external QuillStatic off(
      String eventName, void callback(DeltaStatic delta, String source));
  external void debug(String level);
  external dynamic JS$import(String path);
  /*external void register(String path, dynamic def, [bool suppressWarning]);*/
  /*external void register(JSMap of <String,dynamic> defs, [bool suppressWarning]);*/
  external void register(dynamic /*String|JSMap of <String,dynamic>*/ path_defs,
      [dynamic /*dynamic|bool*/ def_suppressWarning, bool suppressWarning]);
  external dynamic addContainer(String className, [dynamic refNode]);
  external dynamic getModule(String name);
}

// End module QuillJS
@JS("Quill")
external QuillStatic get Quill;
@JS("Quill")
external set Quill(QuillStatic v);
// Module Quill
/* WARNING: export assignment not yet supported. */

// End module Quill
