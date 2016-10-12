@JS("d3")
library d3_chord;

import "package:js/js.dart";
import "package:func/func.dart";
import "dart:html";

/// Type definitions for D3JS d3-chord module v1.0.2
/// Project: https://github.com/d3/d3-chord/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// ---------------------------------------------------------------------
/// Chord
/// ---------------------------------------------------------------------
@anonymous
@JS()
abstract class ChordSubgroup {
  external num get startAngle;
  external set startAngle(num v);
  external num get endAngle;
  external set endAngle(num v);
  external num get value;
  external set value(num v);
  external num get index;
  external set index(num v);
  external num get subindex;
  external set subindex(num v);
  external factory ChordSubgroup(
      {num startAngle, num endAngle, num value, num index, num subindex});
}

@anonymous
@JS()
abstract class Chord {
  external ChordSubgroup get source;
  external set source(ChordSubgroup v);
  external ChordSubgroup get target;
  external set target(ChordSubgroup v);
  external factory Chord({ChordSubgroup source, ChordSubgroup target});
}

@anonymous
@JS()
abstract class ChordGroup {
  external num get startAngle;
  external set startAngle(num v);
  external num get endAngle;
  external set endAngle(num v);
  external num get value;
  external set value(num v);
  external num get index;
  external set index(num v);
  external factory ChordGroup(
      {num startAngle, num endAngle, num value, num index});
}

@anonymous
@JS()
abstract class Chords implements List<Chord> {
  external List<ChordGroup> get groups;
  external set groups(List<ChordGroup> v);
}

@anonymous
@JS()
abstract class ChordLayout {
  external Chords call(List<List<num>> matrix);
  /*external num padAngle();*/
  /*external ChordLayout padAngle(num angle);*/
  external dynamic /*num|ChordLayout*/ padAngle([num angle]);
  /*external Func2<num, num, num>|Null sortGroups();*/
  /*external ChordLayout sortGroups(Null compare);*/
  /*external ChordLayout sortGroups(num compare(num a, num b));*/
  external dynamic /*Func2<num, num, num>|ChordLayout*/ sortGroups(
      [num compare(num a, num b)]);
  /*external Func2<num, num, num>|Null sortSubgroups();*/
  /*external ChordLayout sortSubgroups(Null compare);*/
  /*external ChordLayout sortSubgroups(num compare(num a, num b));*/
  external dynamic /*Func2<num, num, num>|ChordLayout*/ sortSubgroups(
      [num compare(num a, num b)]);
  /*external Func2<num, num, num>|Null sortChords();*/
  /*external ChordLayout sortChords(Null compare);*/
  /*external ChordLayout sortChords(num compare(num a, num b));*/
  external dynamic /*Func2<num, num, num>|ChordLayout*/ sortChords(
      [num compare(num a, num b)]);
}

@JS()
external ChordLayout chord();

/// ---------------------------------------------------------------------
/// Ribbon
/// ---------------------------------------------------------------------
@anonymous
@JS()
abstract class RibbonGenerator<This, ChordDatum, ChordSubgroupDatum> {
  external dynamic /*String|dynamic*/ call(/*This this*/ ChordDatum d,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  /*external (this: This, d: ChordDatum, ...args: any[]) => ChordSubgroupDatum source();*/
  /*external RibbonGenerator source((this: This, d: ChordDatum, ...args: any[]) => ChordSubgroupDatum source);*/
  external dynamic /*(this: This, d: ChordDatum, ...args: any[]) => ChordSubgroupDatum|RibbonGenerator*/ source(
      [Function /*(this: This, d: ChordDatum, ...args: any[]) => ChordSubgroupDatum*/ source]);
  /*external (this: This, d: ChordDatum, ...args: any[]) => ChordSubgroupDatum target();*/
  /*external RibbonGenerator target((this: This, d: ChordDatum, ...args: any[]) => ChordSubgroupDatum target);*/
  external dynamic /*(this: This, d: ChordDatum, ...args: any[]) => ChordSubgroupDatum|RibbonGenerator*/ target(
      [Function /*(this: This, d: ChordDatum, ...args: any[]) => ChordSubgroupDatum*/ target]);
  /*external (this: This, d: ChordSubgroupDatum, ...args: any[]) => number radius();*/
  /*external RibbonGenerator radius(num radius);*/
  /*external RibbonGenerator radius((this: This, d: ChordSubgroupDatum, ...args: any[]) => number radius);*/
  external dynamic /*(this: This, d: ChordSubgroupDatum, ...args: any[]) => number|RibbonGenerator*/ radius(
      [dynamic /*num|(this: This, d: ChordSubgroupDatum, ...args: any[]) => number*/ radius]);
  /*external (this: This, d: ChordSubgroupDatum, ...args: any[]) => number startAngle();*/
  /*external RibbonGenerator startAngle(num angle);*/
  /*external RibbonGenerator startAngle((this: This, d: ChordSubgroupDatum, ...args: any[]) => number angle);*/
  external dynamic /*(this: This, d: ChordSubgroupDatum, ...args: any[]) => number|RibbonGenerator*/ startAngle(
      [dynamic /*num|(this: This, d: ChordSubgroupDatum, ...args: any[]) => number*/ angle]);
  /*external (this: This, d: ChordSubgroupDatum, ...args: any[]) => number endAngle();*/
  /*external RibbonGenerator endAngle(num angle);*/
  /*external RibbonGenerator endAngle((this: This, d: ChordSubgroupDatum, ...args: any[]) => number angle);*/
  external dynamic /*(this: This, d: ChordSubgroupDatum, ...args: any[]) => number|RibbonGenerator*/ endAngle(
      [dynamic /*num|(this: This, d: ChordSubgroupDatum, ...args: any[]) => number*/ angle]);
  /*external CanvasRenderingContext2D|Null context();*/
  /*external RibbonGenerator context(CanvasRenderingContext2D context);*/
  /*external RibbonGenerator context(Null context);*/
  external dynamic /*CanvasRenderingContext2D|RibbonGenerator*/ context(
      [CanvasRenderingContext2D context]);
}

/*external RibbonGenerator<dynamic, Chord, ChordSubgroup> ribbon();*/
/*external RibbonGenerator<dynamic,Datum,SubgroupDatum> ribbon<Datum, SubgroupDatum>();*/
/*external RibbonGenerator<This,Datum,SubgroupDatum> ribbon<This, Datum, SubgroupDatum>();*/
@JS()
external RibbonGenerator /*RibbonGenerator<dynamic,Chord,ChordSubgroup>|RibbonGenerator<dynamic,Datum,SubgroupDatum>|RibbonGenerator<This,Datum,SubgroupDatum>*/ ribbon/*<Datum, SubgroupDatum, This>*/();
