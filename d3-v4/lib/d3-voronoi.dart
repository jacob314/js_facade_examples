@JS("d3")
library d3_voronoi;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-voronoi module v1.0.2
/// Project: https://github.com/d3/d3-voronoi/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// --------------------------------------------------------------------------
/// Shared Type Definitions and Interfaces
/// --------------------------------------------------------------------------

/// The VoronoiPoint interface is defined as a cue that the array is strictly of type [number, number] with two elements
/// for x and y coordinates. However, it is used as a base for interface definitions, and [number, number]
/// cannot be extended.
@anonymous
@JS()
abstract class VoronoiPoint implements List<num> {
  external num get JS$0;
  external set JS$0(num v);
  external num get JS$1;
  external set JS$1(num v);
}

/// The VoronoiPointPair interface is defined as a cue that the array is strictly of type [[number, number], [number, number]] with two elements, one
/// for each point containing the respective x and y coordinates. However, it is used as a base for interface definitions, and
/// [[number, number], [number, number]] cannot be extended.
@anonymous
@JS()
abstract class VoronoiPointPair
    implements List<List<num> /*Tuple of <num,num>*/ > {
  external List<num> /*Tuple of <num,num>*/ get JS$0;
  external set JS$0(List<num> /*Tuple of <num,num>*/ v);
  external List<num> /*Tuple of <num,num>*/ get JS$1;
  external set JS$1(List<num> /*Tuple of <num,num>*/ v);
}

@anonymous
@JS()
abstract class VoronoiPolygon<T>
    implements List<List<num> /*Tuple of <num,num>*/ > {
  external T get data;
  external set data(T v);
} /*export type VoronoiTriangle<T> = [T, T, T];*/

@anonymous
@JS()
abstract class VoronoiSite<T> implements VoronoiPoint {
  external num get index;
  external set index(num v);
  external T get data;
  external set data(T v);
}

@anonymous
@JS()
abstract class VoronoiCell<T> {
  external VoronoiSite<T> get site;
  external set site(VoronoiSite<T> v);
  external List<num> get halfEdges;
  external set halfEdges(List<num> v);
  external factory VoronoiCell({VoronoiSite<T> site, List<num> halfEdges});
}

@anonymous
@JS()
abstract class VoronoiEdge<T> implements VoronoiPointPair {
  external VoronoiSite<T> get left;
  external set left(VoronoiSite<T> v);
  external VoronoiSite<T> /*VoronoiSite<T>|Null*/ get right;
  external set right(VoronoiSite<T> /*VoronoiSite<T>|Null*/ v);
}

@anonymous
@JS()
abstract class VoronoiLink<T> {
  external T get source;
  external set source(T v);
  external T get target;
  external set target(T v);
  external factory VoronoiLink({T source, T target});
}

@anonymous
@JS()
abstract class VoronoiLayout<T> {
  external VoronoiDiagram<T> call(List<T> data);
  /*external Func1<T, num> x();*/
  /*external VoronoiLayout x(num x(T d));*/
  external dynamic /*Func1<T, num>|VoronoiLayout*/ x([num x(T d)]);
  /*external Func1<T, num> y();*/
  /*external VoronoiLayout y(num y(T d));*/
  external dynamic /*Func1<T, num>|VoronoiLayout*/ y([num y(T d)]);
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Null extent();*/
  /*external VoronoiLayout extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|VoronoiLayout*/ extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external Tuple of <num,num>|Null size();*/
  /*external VoronoiLayout size(Tuple of <num,num> size);*/
  external dynamic /*Tuple of <num,num>|VoronoiLayout*/ size(
      [List<num> /*Tuple of <num,num>*/ size]);
  external List<VoronoiPolygon<T>> polygons(List<T> data);
  external List<List<T> /*Tuple of <T,T,T>*/ > triangles(List<T> data);
  external List<VoronoiLink<T>> links(List<T> data);
}

@anonymous
@JS()
abstract class VoronoiDiagram<T> {
  external List<VoronoiEdge<T>> get edges;
  external set edges(List<VoronoiEdge<T>> v);
  external List<VoronoiCell<T> /*VoronoiCell<T>|Null*/ > get cells;
  external set cells(List<VoronoiCell<T> /*VoronoiCell<T>|Null*/ > v);
  external List<VoronoiPolygon<T>> polygons();
  external List<List<T> /*Tuple of <T,T,T>*/ > triangles();
  external List<VoronoiLink<T>> links();
}

/// --------------------------------------------------------------------------
/// voronoi Export
/// --------------------------------------------------------------------------
/*external VoronoiLayout<Tuple of <num,num>> voronoi();*/
/*external VoronoiLayout<T> voronoi<T>();*/
@JS()
external VoronoiLayout /*VoronoiLayout<Tuple of <num,num>>|VoronoiLayout<T>*/ voronoi/*<T>*/();
