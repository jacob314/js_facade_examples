@JS()
library geojson;

import "package:js/js.dart";

/// Type definitions for GeoJSON Format Specification
/// Project: http://geojson.org/
/// Definitions by: Jacob Bruun <https://github.com/cobster/>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// http://geojson.org/geojson-spec.html#geojson-objects
@anonymous
@JS()
abstract class GeoJsonObject {
  external String get type;
  external set type(String v);
  external List<num> get bbox;
  external set bbox(List<num> v);
  external CoordinateReferenceSystem get crs;
  external set crs(CoordinateReferenceSystem v);
  external factory GeoJsonObject(
      {String type, List<num> bbox, CoordinateReferenceSystem crs});
}

/// http://geojson.org/geojson-spec.html#positions
/*export type Position = number[]*/

/// http://geojson.org/geojson-spec.html#geometry-objects
@anonymous
@JS()
abstract class GeometryObject implements GeoJsonObject {
  external dynamic get coordinates;
  external set coordinates(dynamic v);
  external factory GeometryObject(
      {dynamic coordinates,
      String type,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// http://geojson.org/geojson-spec.html#point
@anonymous
@JS()
abstract class Point implements GeometryObject {
  external String /*'Point'*/ get type;
  external set type(String /*'Point'*/ v);
  external List<num> get coordinates;
  external set coordinates(List<num> v);
  external factory Point(
      {String /*'Point'*/ type,
      List<num> coordinates,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// http://geojson.org/geojson-spec.html#multipoint
@anonymous
@JS()
abstract class MultiPoint implements GeometryObject {
  external String /*'MultiPoint'*/ get type;
  external set type(String /*'MultiPoint'*/ v);
  external List<List<num>> get coordinates;
  external set coordinates(List<List<num>> v);
  external factory MultiPoint(
      {String /*'MultiPoint'*/ type,
      List<List<num>> coordinates,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// http://geojson.org/geojson-spec.html#linestring
@anonymous
@JS()
abstract class LineString implements GeometryObject {
  external String /*'LineString'*/ get type;
  external set type(String /*'LineString'*/ v);
  external List<List<num>> get coordinates;
  external set coordinates(List<List<num>> v);
  external factory LineString(
      {String /*'LineString'*/ type,
      List<List<num>> coordinates,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// http://geojson.org/geojson-spec.html#multilinestring
@anonymous
@JS()
abstract class MultiLineString implements GeometryObject {
  external String /*'MultiLineString'*/ get type;
  external set type(String /*'MultiLineString'*/ v);
  external List<List<List<num>>> get coordinates;
  external set coordinates(List<List<List<num>>> v);
  external factory MultiLineString(
      {String /*'MultiLineString'*/ type,
      List<List<List<num>>> coordinates,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// http://geojson.org/geojson-spec.html#polygon
@anonymous
@JS()
abstract class Polygon implements GeometryObject {
  external String /*'Polygon'*/ get type;
  external set type(String /*'Polygon'*/ v);
  external List<List<List<num>>> get coordinates;
  external set coordinates(List<List<List<num>>> v);
  external factory Polygon(
      {String /*'Polygon'*/ type,
      List<List<List<num>>> coordinates,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// http://geojson.org/geojson-spec.html#multipolygon
@anonymous
@JS()
abstract class MultiPolygon implements GeometryObject {
  external String /*'MultiPolygon'*/ get type;
  external set type(String /*'MultiPolygon'*/ v);
  external List<List<List<List<num>>>> get coordinates;
  external set coordinates(List<List<List<List<num>>>> v);
  external factory MultiPolygon(
      {String /*'MultiPolygon'*/ type,
      List<List<List<List<num>>>> coordinates,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// http://geojson.org/geojson-spec.html#geometry-collection
@anonymous
@JS()
abstract class GeometryCollection implements GeoJsonObject {
  external String /*'GeometryCollection'*/ get type;
  external set type(String /*'GeometryCollection'*/ v);
  external List<GeometryObject> get geometries;
  external set geometries(List<GeometryObject> v);
  external factory GeometryCollection(
      {String /*'GeometryCollection'*/ type,
      List<GeometryObject> geometries,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// http://geojson.org/geojson-spec.html#feature-objects
@anonymous
@JS()
abstract class Feature<T extends GeometryObject> implements GeoJsonObject {
  external String /*'Feature'*/ get type;
  external set type(String /*'Feature'*/ v);
  external T get geometry;
  external set geometry(T v);
  external dynamic get properties;
  external set properties(dynamic v);
  external String get id;
  external set id(String v);
  external factory Feature(
      {String /*'Feature'*/ type,
      T geometry,
      dynamic properties,
      String id,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// http://geojson.org/geojson-spec.html#feature-collection-objects
@anonymous
@JS()
abstract class FeatureCollection<T extends GeometryObject>
    implements GeoJsonObject {
  external String /*'FeatureCollection'*/ get type;
  external set type(String /*'FeatureCollection'*/ v);
  external List<Feature<T>> get features;
  external set features(List<Feature<T>> v);
  external factory FeatureCollection(
      {String /*'FeatureCollection'*/ type,
      List<Feature<T>> features,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// http://geojson.org/geojson-spec.html#coordinate-reference-system-objects
@anonymous
@JS()
abstract class CoordinateReferenceSystem {
  external String get type;
  external set type(String v);
  external dynamic get properties;
  external set properties(dynamic v);
  external factory CoordinateReferenceSystem({String type, dynamic properties});
}

@anonymous
@JS()
abstract class NamedCoordinateReferenceSystem
    implements CoordinateReferenceSystem {
  external dynamic /*{ name: string }*/ get properties;
  external set properties(dynamic /*{ name: string }*/ v);
  external factory NamedCoordinateReferenceSystem(
      {dynamic /*{ name: string }*/ properties, String type});
}

@anonymous
@JS()
abstract class LinkedCoordinateReferenceSystem
    implements CoordinateReferenceSystem {
  external dynamic /*{ href: string; type: string }*/ get properties;
  external set properties(dynamic /*{ href: string; type: string }*/ v);
  external factory LinkedCoordinateReferenceSystem(
      {dynamic /*{ href: string; type: string }*/ properties, String type});
}
