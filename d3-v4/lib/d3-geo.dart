@JS("d3")
library d3_geo;

import "package:js/js.dart";
import "geojson.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-geo module v1.2.4
/// Project: https://github.com/d3/d3-geo/
/// Definitions by: Hugues Stefanski <https://github.com/Ledragon>, Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
import "geojson.dart" as GeoJSON;

/// ----------------------------------------------------------------------
/// Shared Interfaces and Types
/// ----------------------------------------------------------------------

/// A basic geometry for a sphere, which is supported by d3-geo
/// beyond the GeoJSON geometries.
@anonymous
@JS()
abstract class GeoSphere {
  external String /*'Sphere'*/ get type;
  external set type(String /*'Sphere'*/ v);
  external factory GeoSphere({String /*'Sphere'*/ type});
}

/// Type Alias for GeoJSON Geometry Object and GeoSphere additional
/// geometry supported by d3-geo
/*export type GeoGeometryObjects = GeoJSON.GeometryObject | GeoSphere;*/

/// A GeoJSON-style GeometryCollection which supports GeoJSON geometry objects
/// and additionally GeoSphere
@anonymous
@JS()
abstract class ExtendedGeometryCollection<
    GeometryType extends dynamic /*GeometryObject|GeoSphere*/ > {
  external String get type;
  external set type(String v);
  external List<num> get bbox;
  external set bbox(List<num> v);
  external CoordinateReferenceSystem get crs;
  external set crs(CoordinateReferenceSystem v);
  external List<GeometryType> get geometries;
  external set geometries(List<GeometryType> v);
  external factory ExtendedGeometryCollection(
      {String type,
      List<num> bbox,
      CoordinateReferenceSystem crs,
      List<GeometryType> geometries});
}

/// A GeoJSON-style Feature which support features built on GeoJSON GeometryObjects
/// or GeoSphere
@anonymous
@JS()
abstract class ExtendedFeature<
    GeometryType extends dynamic /*GeometryObject|GeoSphere*/,
    Properties> implements GeoJSON.GeoJsonObject {
  external GeometryType get geometry;
  external set geometry(GeometryType v);
  external Properties get properties;
  external set properties(Properties v);
  external String get id;
  external set id(String v);
  external factory ExtendedFeature(
      {GeometryType geometry,
      Properties properties,
      String id,
      String type,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// A GeoJSON-style FeatureCollection which supports GeoJSON features
/// and features built on GeoSphere
@anonymous
@JS()
abstract class ExtendedFeatureCollection<
    FeatureType extends ExtendedFeature<dynamic /*GeometryObject|GeoSphere*/,
        dynamic>> implements GeoJSON.GeoJsonObject {
  external List<FeatureType> get features;
  external set features(List<FeatureType> v);
  external factory ExtendedFeatureCollection(
      {List<FeatureType> features,
      String type,
      List<num> bbox,
      CoordinateReferenceSystem crs});
}

/// Type Alias for permissible objects which can be used with d3-geo
/// methods
/*export type GeoPermissibleObjects = GeoGeometryObjects | ExtendedGeometryCollection<GeoGeometryObjects> | ExtendedFeature<GeoGeometryObjects, any> | ExtendedFeatureCollection<ExtendedFeature<GeoGeometryObjects, any>>;*/
/// ----------------------------------------------------------------------
/// Spherical Math
/// ----------------------------------------------------------------------
/// Returns the spherical area of the specified GeoJSON feature in steradians.
/*external num geoArea(ExtendedFeature<GeometryObject|GeoSphere,dynamic> feature);*/
/*external num geoArea(ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>> feature);*/
/*external num geoArea(GeometryObject|GeoSphere feature);*/
/*external num geoArea(ExtendedGeometryCollection<GeometryObject|GeoSphere> feature);*/
@JS()
external num geoArea(
    dynamic /*ExtendedFeature<GeometryObject|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>>|GeometryObject|GeoSphere|ExtendedGeometryCollection<GeometryObject|GeoSphere>*/ feature);

/// Returns the spherical bounding box for the specified GeoJSON feature. The bounding box is represented by a two-dimensional array: [[left, bottom], [right, top]], where left is the minimum longitude, bottom is the minimum latitude, right is maximum longitude, and top is the maximum latitude. All coordinates are given in degrees.
/*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> geoBounds(ExtendedFeature<GeometryObject|GeoSphere,dynamic> feature);*/
/*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> geoBounds(ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>> feature);*/
/*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> geoBounds(GeometryObject|GeoSphere feature);*/
/*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> geoBounds(ExtendedGeometryCollection<GeometryObject|GeoSphere> feature);*/
@JS()
external List<
    List<
        num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ geoBounds(
    dynamic /*ExtendedFeature<GeometryObject|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>>|GeometryObject|GeoSphere|ExtendedGeometryCollection<GeometryObject|GeoSphere>*/ feature);

/// Returns the spherical centroid of the specified GeoJSON feature. See also path.centroid, which computes the projected planar centroid.
/*external Tuple of <num,num> geoCentroid(ExtendedFeature<GeometryObject|GeoSphere,dynamic> feature);*/
/*external Tuple of <num,num> geoCentroid(ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>> feature);*/
/*external Tuple of <num,num> geoCentroid(GeometryObject|GeoSphere feature);*/
/*external Tuple of <num,num> geoCentroid(ExtendedGeometryCollection<GeometryObject|GeoSphere> feature);*/
@JS()
external List<num> /*Tuple of <num,num>*/ geoCentroid(
    dynamic /*ExtendedFeature<GeometryObject|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>>|GeometryObject|GeoSphere|ExtendedGeometryCollection<GeometryObject|GeoSphere>*/ feature);

/// Returns the great-arc distance in radians between the two points a and b. Each point must be specified as a two-element array [longitude, latitude] in degrees.
@JS()
external num geoDistance(
    List<num> /*Tuple of <num,num>*/ a, List<num> /*Tuple of <num,num>*/ b);

/// Returns the great-arc length of the specified GeoJSON feature in radians.
/*external num geoLength(ExtendedFeature<GeometryObject|GeoSphere,dynamic> feature);*/
/*external num geoLength(ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>> feature);*/
/*external num geoLength(GeometryObject|GeoSphere feature);*/
/*external num geoLength(ExtendedGeometryCollection<GeometryObject|GeoSphere> feature);*/
@JS()
external num geoLength(
    dynamic /*ExtendedFeature<GeometryObject|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>>|GeometryObject|GeoSphere|ExtendedGeometryCollection<GeometryObject|GeoSphere>*/ feature);

/// Returns an interpolator function given two points a and b. Each point must be specified as a two-element array [longitude, latitude] in degrees.
@JS()
external Func1<num, List<num> /*Tuple of <num,num>*/ > geoInterpolate(
    List<num> /*Tuple of <num,num>*/ a, List<num> /*Tuple of <num,num>*/ b);

@anonymous
@JS()
abstract class GeoRotation {
  external List<num> /*Tuple of <num,num>*/ call(
      List<num> /*Tuple of <num,num>*/ point);
  external List<num> /*Tuple of <num,num>*/ invert(
      List<num> /*Tuple of <num,num>*/ point);
}

/// Returns a rotation function for the given angles, which must be a two- or three-element array of numbers [lambda, phi, gamma] specifying the rotation angles in degrees about each spherical axis.
@JS()
external GeoRotation geoRotation(
    List<num> /*Tuple of <num,num>|Tuple of <num,num,num>*/ angles);

/// ----------------------------------------------------------------------
/// Spherical Shapes
/// ----------------------------------------------------------------------

/// geoCircle ============================================================
@anonymous
@JS()
abstract class GeoCircleGenerator<This, Datum> {
  /// Returns a new GeoJSON geometry object of type “Polygon” approximating a circle on the surface of a sphere, with the current center, radius and precision.
  external Polygon call(
      /*This this*/ [Datum d,
      dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  /*external (this: This, d: Datum, ...args: any[]) => [number, number] center();*/
  /*external GeoCircleGenerator center(Tuple of <num,num> center);*/
  /*external GeoCircleGenerator center((this: This, d: Datum, ...args: any[]) => [number, number] center);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => [number, number]|GeoCircleGenerator*/ center(
      [dynamic /*Tuple of <num,num>|(this: This, d: Datum, ...args: any[]) => [number, number]*/ center]);
  /*external (this: This, d: Datum, ...args: any[]) => number radius();*/
  /*external GeoCircleGenerator radius(num radius);*/
  /*external GeoCircleGenerator radius((this: This, d: Datum, ...args: any[]) => number radius);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => number|GeoCircleGenerator*/ radius(
      [dynamic /*num|(this: This, d: Datum, ...args: any[]) => number*/ radius]);
  /*external (this: This, d: Datum, ...args: any[]) => number precision();*/
  /*external GeoCircleGenerator precision(num precision);*/
  /*external GeoCircleGenerator precision((this: This, d: Datum, ...args: any[]) => number precision);*/
  external dynamic /*(this: This, d: Datum, ...args: any[]) => number|GeoCircleGenerator*/ precision(
      [dynamic /*num|(this: This, d: Datum, ...args: any[]) => number*/ precision]);
}

/*external GeoCircleGenerator<dynamic, dynamic> geoCircle();*/
/*external GeoCircleGenerator<dynamic,Datum> geoCircle<Datum>();*/
/*external GeoCircleGenerator<This,Datum> geoCircle<This, Datum>();*/
@JS()
external GeoCircleGenerator<dynamic,
    dynamic> /*GeoCircleGenerator<dynamic,dynamic>|GeoCircleGenerator<dynamic,Datum>|GeoCircleGenerator<This,Datum>*/ geoCircle/*<Datum, This>*/();

/// geoGraticule ============================================================
@anonymous
@JS()
abstract class GeoGraticuleGenerator {
  /// Returns a GeoJSON MultiLineString geometry object representing all meridians and parallels for this graticule.
  external MultiLineString call();
  external List<LineString> lines();
  external Polygon outline();
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent();*/
  /*external GeoGraticuleGenerator extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|GeoGraticuleGenerator*/ extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> extentMajor();*/
  /*external GeoGraticuleGenerator extentMajor(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|GeoGraticuleGenerator*/ extentMajor(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> extentMinor();*/
  /*external GeoGraticuleGenerator extentMinor(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|GeoGraticuleGenerator*/ extentMinor(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  /*external Tuple of <num,num> step();*/
  /*external GeoGraticuleGenerator step(Tuple of <num,num> step);*/
  external dynamic /*Tuple of <num,num>|GeoGraticuleGenerator*/ step(
      [List<num> /*Tuple of <num,num>*/ step]);
  /*external Tuple of <num,num> stepMajor();*/
  /*external GeoGraticuleGenerator stepMajor(Tuple of <num,num> step);*/
  external dynamic /*Tuple of <num,num>|GeoGraticuleGenerator*/ stepMajor(
      [List<num> /*Tuple of <num,num>*/ step]);
  /*external Tuple of <num,num> stepMinor();*/
  /*external GeoGraticuleGenerator stepMinor(Tuple of <num,num> step);*/
  external dynamic /*Tuple of <num,num>|GeoGraticuleGenerator*/ stepMinor(
      [List<num> /*Tuple of <num,num>*/ step]);
  /*external num precision();*/
  /*external GeoGraticuleGenerator precision(num angle);*/
  external dynamic /*num|GeoGraticuleGenerator*/ precision([num angle]);
}

@JS()
external GeoGraticuleGenerator geoGraticule();

/// ----------------------------------------------------------------------
/// Projections
/// ----------------------------------------------------------------------
@anonymous
@JS()
abstract class GeoStream {
  external void lineEnd();
  external void lineStart();
  external void point(num x, num y, [num z]);
  external void polygonEnd();
  external void polygonStart();
  external void sphere();
}

@anonymous
@JS()
abstract class GeoStreamWrapper {
  external GeoStream stream(GeoStream stream);
}

@anonymous
@JS()
abstract class GeoRawProjection {
  external List<num> /*Tuple of <num,num>*/ call(num longitude, num latitude);
  external List<num> /*Tuple of <num,num>*/ invert(num x, num y);
}

@anonymous
@JS()
abstract class GeoProjection implements GeoStreamWrapper {
  /// Returns a new array x, y representing the projected point of the given point. The point must be specified as a two-element array [longitude, latitude] in degrees.
  external List<num> /*Tuple of <num,num>|Null*/ call(
      List<num> /*Tuple of <num,num>*/ point);
  /*external Tuple of <num,num> center();*/
  /*external GeoProjection center(Tuple of <num,num> point);*/
  external dynamic /*Tuple of <num,num>|GeoProjection*/ center(
      [List<num> /*Tuple of <num,num>*/ point]);
  /*external num|Null clipAngle();*/
  /*external GeoProjection clipAngle(Null angle);*/
  /*external GeoProjection clipAngle(num angle);*/
  external dynamic /*num|GeoProjection*/ clipAngle([num angle]);
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>>|Null clipExtent();*/
  /*external GeoProjection clipExtent(Null extent);*/
  /*external GeoProjection clipExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|GeoProjection*/ clipExtent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);

  /// Sets the projection’s scale and translate to fit the specified GeoJSON object in the center of the given extent.
  /*external GeoProjection fitExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent, ExtendedFeature<GeometryObject|GeoSphere,dynamic> object);*/
  /*external GeoProjection fitExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent, ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>> object);*/
  /*external GeoProjection fitExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent, GeometryObject|GeoSphere object);*/
  /*external GeoProjection fitExtent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent, ExtendedGeometryCollection<GeometryObject|GeoSphere> object);*/
  external GeoProjection fitExtent(
      List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent,
      dynamic /*ExtendedFeature<GeometryObject|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>>|GeometryObject|GeoSphere|ExtendedGeometryCollection<GeometryObject|GeoSphere>*/ object);

  /// A convenience method for projection.fitExtent where the top-left corner of the extent is [0,0].
  /*external GeoProjection fitSize(Tuple of <num,num> size, ExtendedFeature<GeometryObject|GeoSphere,dynamic> object);*/
  /*external GeoProjection fitSize(Tuple of <num,num> size, ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>> object);*/
  /*external GeoProjection fitSize(Tuple of <num,num> size, GeometryObject|GeoSphere object);*/
  /*external GeoProjection fitSize(Tuple of <num,num> size, ExtendedGeometryCollection<GeometryObject|GeoSphere> object);*/
  external GeoProjection fitSize(List<num> /*Tuple of <num,num>*/ size,
      dynamic /*ExtendedFeature<GeometryObject|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>>|GeometryObject|GeoSphere|ExtendedGeometryCollection<GeometryObject|GeoSphere>*/ object);

  /// Returns a new array [longitude, latitude] in degrees representing the unprojected point of the given projected point.
  external List<num> /*Tuple of <num,num>|Null*/ invert(
      List<num> /*Tuple of <num,num>*/ point);
  /*external num precision();*/
  /*external GeoProjection precision(num precision);*/
  external dynamic /*num|GeoProjection*/ precision([num precision]);
  /*external Tuple of <num,num,num> rotate();*/
  /*external GeoProjection rotate(Tuple of <num,num>|Tuple of <num,num,num> angles);*/
  external dynamic /*Tuple of <num,num,num>|GeoProjection*/ rotate(
      [List<num> /*Tuple of <num,num>|Tuple of <num,num,num>*/ angles]);
  /*external num scale();*/
  /*external GeoProjection scale(num scale);*/
  external dynamic /*num|GeoProjection*/ scale([num scale]);
  /*external Tuple of <num,num> translate();*/
  /*external GeoProjection translate(Tuple of <num,num> point);*/
  external dynamic /*Tuple of <num,num>|GeoProjection*/ translate(
      [List<num> /*Tuple of <num,num>*/ point]);
}

@anonymous
@JS()
abstract class GeoConicProjection implements GeoProjection {
  /*external GeoConicProjection parallels(Tuple of <num,num> value);*/
  /*external Tuple of <num,num> parallels();*/
  external dynamic /*GeoConicProjection|Tuple of <num,num>*/ parallels(
      [List<num> /*Tuple of <num,num>*/ value]);
}

/// geoPath ==============================================================
@anonymous
@JS()
abstract class GeoContext {
  external void arc(num x, num y, num radius, num startAngle, num endAngle,
      [bool anticlockwise]);
  external void beginPath();
  external void closePath();
  external void lineTo(num x, num y);
  external void moveTo(num x, num y);
}

@anonymous
@JS()
abstract class GeoPath<This,
    DatumObject extends dynamic /*GeometryObject|GeoSphere|ExtendedGeometryCollection<GeometryObject|GeoSphere>|ExtendedFeature<GeometryObject|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>>*/ > {
  external String call(/*This this*/ DatumObject object,
      [dynamic args1,
      dynamic args2,
      dynamic args3,
      dynamic args4,
      dynamic args5]);
  external num area(DatumObject object);
  external List<
      List<
          num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ bounds(
      DatumObject object);
  external List<num> /*Tuple of <num,num>*/ centroid(DatumObject object);
  /*external C|Null context<C extends GeoContext>();*/
  /*external GeoPath context(GeoContext|Null context);*/
  external dynamic /*C|GeoPath*/ context/*<C extends GeoContext>*/(
      [GeoContext context]);

  /// Get the current projection. The generic parameter can be used to cast the result to the
  /// correct, known type of the projection, e.g. GeoProjection or GeoConicProjection. Otherwise,
  /// the return type defaults to the minimum type requirement for a projection which
  /// can be passed into a GeoPath.
  /*external P|Null projection<P extends GeoConicProjection|GeoProjection|GeoStreamWrapper>();*/
  /// Set the projection to the identity projection
  /*external GeoPath projection(Null projection);*/
  /// Set the projection to be used with the geo path generator.
  /*external GeoPath projection(GeoProjection projection);*/
  /// Set the projection to be used with the geo path generator to a custom projection.
  /// Custom projections must minimally contain a stream method.
  /*external GeoPath projection(GeoStreamWrapper projection);*/
  external dynamic /*P|GeoPath*/ projection/*<P>*/(
      [dynamic /*GeoProjection|GeoStreamWrapper*/ projection]);
  /*external (this: This, object: DatumObject, ...args: any[]) => number pointRadius();*/
  /*external GeoPath pointRadius(num value);*/
  /*external GeoPath pointRadius((this: This, object: DatumObject, ...args: any[]) => number value);*/
  external dynamic /*(this: This, object: DatumObject, ...args: any[]) => number|GeoPath*/ pointRadius(
      [dynamic /*num|(this: This, object: DatumObject, ...args: any[]) => number*/ value]);
}

/*external GeoPath<dynamic,GeometryObject|GeoSphere|ExtendedGeometryCollection<GeometryObject|GeoSphere>|ExtendedFeature<GeometryObject|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>>> geoPath();*/
/*external GeoPath<dynamic,DatumObject> geoPath<DatumObject extends GeometryObject|GeoSphere|ExtendedGeometryCollection<GeometryObject|GeoSphere>|ExtendedFeature<GeometryObject|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>>>();*/
/*external GeoPath<This,DatumObject> geoPath<This, DatumObject extends GeometryObject|GeoSphere|ExtendedGeometryCollection<GeometryObject|GeoSphere>|ExtendedFeature<GeometryObject|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>>>();*/
@JS()
external GeoPath<dynamic,
    dynamic> /*GeoPath<dynamic,GeometryObject|GeoSphere|ExtendedGeometryCollection<GeometryObject|GeoSphere>|ExtendedFeature<GeometryObject|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>>>|GeoPath<dynamic,DatumObject>|GeoPath<This,DatumObject>*/ geoPath/*<DatumObject, This>*/();

/// Raw Projections ========================================================
@JS()
external GeoRawProjection geoAzimuthalEqualAreaRaw();
@JS()
external GeoRawProjection geoAzimuthalEquidistantRaw();
@JS()
external GeoRawProjection geoConicConformalRaw(num phi0, num phi1);
@JS()
external GeoRawProjection geoConicEqualAreaRaw(num phi0, num phi1);
@JS()
external GeoRawProjection geoConicEquidistantRaw(num phi0, num phi1);
@JS()
external GeoRawProjection geoEquirectangularRaw();
@JS()
external GeoRawProjection geoGnomonicRaw();
@JS()
external GeoRawProjection geoMercatorRaw();
@JS()
external GeoRawProjection geoOrthographicRaw();
@JS()
external GeoRawProjection geoStereographicRaw();
@JS()
external GeoRawProjection geoTransverseMercatorRaw();

/// geoProjection ==========================================================
@JS()
external GeoProjection geoProjection(GeoRawProjection project);

/// geoProjectionMutator ====================================================
@JS()
external Func0<GeoProjection> geoProjectionMutator(
    Function /*(...args: any[]) => GeoRawProjection*/ JS$factory);

/// Pre-Defined Projections =================================================
@JS()
external GeoConicProjection geoAlbers();
@JS()
external GeoProjection geoAlbersUsa();
@JS()
external GeoProjection geoAzimuthalEqualArea();
@JS()
external GeoProjection geoAzimuthalEquidistant();
@JS()
external GeoConicProjection geoConicConformal();
@JS()
external GeoConicProjection geoConicEqualArea();
@JS()
external GeoConicProjection geoConicEquidistant();
@JS()
external GeoProjection geoEquirectangular();
@JS()
external GeoProjection geoGnomonic();
@JS()
external GeoProjection geoMercator();
@JS()
external GeoProjection geoOrthographic();
@JS()
external GeoProjection geoStereographic();
@JS()
external GeoProjection geoTransverseMercator();

/// geoClipExtent =============================================================
@anonymous
@JS()
abstract class GeoExtent {
  /*external Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent();*/
  /*external GeoExtent extent(Tuple of <Tuple of <num,num>,Tuple of <num,num>> extent);*/
  external dynamic /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>|GeoExtent*/ extent(
      [List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ extent]);
  external GeoStream stream(GeoStream stream);
}

@JS()
external GeoExtent geoClipExtent();

/// ----------------------------------------------------------------------
/// Projection Streams
/// ----------------------------------------------------------------------

/// geoTransform(...) ====================================================
@anonymous
@JS()
abstract class GeoTransformPrototype {
  external void lineEnd(/*GeoTransformPrototype&{ stream: GeoStream } this*/);
  external void lineStart(/*GeoTransformPrototype&{ stream: GeoStream } this*/);
  external void point(
      /*GeoTransformPrototype&{ stream: GeoStream } this*/ num x, num y,
      [num z]);
  external void polygonEnd(
      /*GeoTransformPrototype&{ stream: GeoStream } this*/);
  external void polygonStart(
      /*GeoTransformPrototype&{ stream: GeoStream } this*/);
  external void sphere(/*GeoTransformPrototype&{ stream: GeoStream } this*/);
}

/// TODO: Review whether GeoStreamWrapper should be included into return value union type, i.e. ({ stream: (s: GeoStream) => (T & GeoStream & GeoStreamWrapper)})?
/// It probably should be omitted for purposes of this API. The stream method added to (T & GeoStream) is more of a private member used internally to
/// implement the Transform factory
@JS()
external dynamic /*{ stream: (s: GeoStream) => (T & GeoStream) }*/ geoTransform/*<T extends GeoTransformPrototype>*/(
    dynamic/*=T*/ prototype);

/// geoStream(...) =======================================================
/*external void geoStream(ExtendedFeature<GeometryObject|GeoSphere,dynamic> object, GeoStream stream);*/
/*external void geoStream(ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>> object, GeoStream stream);*/
/*external void geoStream(GeometryObject|GeoSphere object, GeoStream stream);*/
/*external void geoStream(ExtendedGeometryCollection<GeometryObject|GeoSphere> object, GeoStream stream);*/
@JS()
external void geoStream(
    dynamic /*ExtendedFeature<GeometryObject|GeoSphere,dynamic>|ExtendedFeatureCollection<ExtendedFeature<GeometryObject|GeoSphere,dynamic>>|GeometryObject|GeoSphere|ExtendedGeometryCollection<GeometryObject|GeoSphere>*/ object,
    GeoStream stream);
