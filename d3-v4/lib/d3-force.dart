@JS("d3")
library d3_force;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-force module v1.0.2
/// Project: https://github.com/d3/d3-force/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// -----------------------------------------------------------------------
/// Force Simulation
/// -----------------------------------------------------------------------

/// TODO: Review below: fx and fy should be optional as a matter of principle. The other properties, are optional prior to initialization, but once the
/// the nodes array is passed into the simulation, will be initialized.
@anonymous
@JS()
abstract class SimulationNodeDatum {
  /// NB: index is assigned internally by simulation, once initialized it is defined
  external num get index;
  external set index(num v);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get vx;
  external set vx(num v);
  external num get vy;
  external set vy(num v);
  external num get fx;
  external set fx(num v);
  external num get fy;
  external set fy(num v);
  external factory SimulationNodeDatum(
      {num index, num x, num y, num vx, num vy, num fx, num fy});
}

@anonymous
@JS()
abstract class SimulationLinkDatum<NodeDatum extends SimulationNodeDatum> {
  /// TODO: Strictly speaking, the string or number typing of source and target is only used when (re)initializing links
  /// Once initialized, links' source and target fields will be of type NodeDatum
  external dynamic /*NodeDatum|String|num*/ get source;
  external set source(dynamic /*NodeDatum|String|num*/ v);
  external dynamic /*NodeDatum|String|num*/ get target;
  external set target(dynamic /*NodeDatum|String|num*/ v);

  /// NB: index is assigned internally by force, once initialized it is defined
  external num get index;
  external set index(num v);
  external factory SimulationLinkDatum(
      {dynamic /*NodeDatum|String|num*/ source,
      dynamic /*NodeDatum|String|num*/ target,
      num index});
}

@anonymous
@JS()
abstract class Simulation<NodeDatum extends SimulationNodeDatum,
    LinkDatum extends SimulationLinkDatum<NodeDatum>> {
  external Simulation restart();
  external Simulation stop();
  external void tick();
  /*external List<NodeDatum> nodes();*/
  /*external Simulation nodes(List<NodeDatum> nodesData);*/
  external dynamic /*List<NodeDatum>|Simulation*/ nodes(
      [List<NodeDatum> nodesData]);
  /*external num alpha();*/
  /*external Simulation alpha(num alpha);*/
  external dynamic /*num|Simulation*/ alpha([num alpha]);
  /*external num alphaMin();*/
  /*external Simulation alphaMin(num min);*/
  external dynamic /*num|Simulation*/ alphaMin([num min]);
  /*external num alphaDecay();*/
  /*external Simulation alphaDecay(num decay);*/
  external dynamic /*num|Simulation*/ alphaDecay([num decay]);
  /*external num alphaTarget();*/
  /*external Simulation alphaTarget(num target);*/
  external dynamic /*num|Simulation*/ alphaTarget([num target]);
  /*external num velocityDecay();*/
  /*external Simulation velocityDecay(num decay);*/
  external dynamic /*num|Simulation*/ velocityDecay([num decay]);
  /*external F force<F extends Force<NodeDatum,LinkDatum>>(String name);*/
  /*external Simulation force(String name, Null force);*/
  /*external Simulation force(String name, Force<NodeDatum, LinkDatum> force);*/
  external dynamic /*F|Simulation*/ force/*<F extends Force<NodeDatum,LinkDatum>>*/(
      String name,
      [Force<NodeDatum, LinkDatum> force]);
  external dynamic /*NodeDatum|dynamic*/ find(num x, num y, [num radius]);
  /*external VoidFunc0 on('tick'|'end'|String typenames);*/
  /*external Simulation on('tick'|'end'|String typenames, Null listener);*/
  /*external Simulation on('tick'|'end'|String typenames, void listener(Simulation JS$this));*/
  external dynamic /*VoidFunc0|Simulation*/ on(
      String /*'tick'|'end'|String*/ typenames,
      [void listener(/*Simulation this*/)]);
}

/*external Simulation<NodeDatum,dynamic> forceSimulation<NodeDatum extends SimulationNodeDatum>([List<NodeDatum> nodesData]);*/
/*external Simulation<NodeDatum,LinkDatum> forceSimulation<NodeDatum extends SimulationNodeDatum, LinkDatum extends SimulationLinkDatum<NodeDatum>>([List<NodeDatum> nodesData]);*/
@JS()
external Simulation<dynamic, dynamic> /*Simulation<NodeDatum,dynamic>|Simulation<NodeDatum,LinkDatum>*/ forceSimulation/*<NodeDatum extends SimulationNodeDatum, LinkDatum extends SimulationLinkDatum<NodeDatum>>*/(
    [List<dynamic/*=NodeDatum*/ > nodesData]);

/// ----------------------------------------------------------------------
/// Forces
/// ----------------------------------------------------------------------
@anonymous
@JS()
abstract class Force<NodeDatum extends SimulationNodeDatum,
    LinkDatum extends SimulationLinkDatum<NodeDatum>> {
  external void call(num alpha);
  external void initialize(List<NodeDatum> nodes);
}

/// Centering ------------------------------------------------------------
@anonymous
@JS()
abstract class ForceCenter<NodeDatum extends SimulationNodeDatum>
    implements Force<NodeDatum, dynamic> {
  /*external num x();*/
  /*external ForceCenter x(num x);*/
  external dynamic /*num|ForceCenter*/ x([num x]);
  /*external num y();*/
  /*external ForceCenter y(num y);*/
  external dynamic /*num|ForceCenter*/ y([num y]);
}

@JS()
external ForceCenter<dynamic/*=NodeDatum*/ >
    forceCenter/*<NodeDatum extends SimulationNodeDatum>*/([num x, num y]);

/// Collision ------------------------------------------------------------
@anonymous
@JS()
abstract class ForceCollide<NodeDatum extends SimulationNodeDatum>
    implements Force<NodeDatum, dynamic> {
  /*external Func3<NodeDatum, num, List<NodeDatum>, num> radius();*/
  /*external ForceCollide radius(num radius);*/
  /*external ForceCollide radius(
    num radius(NodeDatum node, num i, List<NodeDatum> nodes));*/
  external dynamic /*Func3<NodeDatum, num, List<NodeDatum>, num>|ForceCollide*/ radius(
      [dynamic /*num|Func3<NodeDatum, num, List<NodeDatum>, num>*/ radius]);
  /*external num strength();*/
  /*external ForceCollide strength(num strength);*/
  external dynamic /*num|ForceCollide*/ strength([num strength]);
  /*external num iterations();*/
  /*external ForceCollide iterations(num iterations);*/
  external dynamic /*num|ForceCollide*/ iterations([num iterations]);
}

/*external ForceCollide<NodeDatum> forceCollide<NodeDatum extends SimulationNodeDatum>();*/
/*external ForceCollide<NodeDatum> forceCollide<NodeDatum extends SimulationNodeDatum>(num radius);*/
/*external ForceCollide<NodeDatum> forceCollide<NodeDatum extends SimulationNodeDatum>(num radius(NodeDatum node, num i, List<NodeDatum> nodes));*/
@JS()
external ForceCollide<dynamic/*=NodeDatum*/ > forceCollide/*<NodeDatum extends SimulationNodeDatum>*/(
    [dynamic /*num|Func3<NodeDatum, num, List<NodeDatum>, num>*/ radius]);

/// Link ----------------------------------------------------------------
@anonymous
@JS()
abstract class ForceLink<NodeDatum extends SimulationNodeDatum,
        LinkDatum extends SimulationLinkDatum<NodeDatum>>
    implements Force<NodeDatum, LinkDatum> {
  /*external List<LinkDatum> links();*/
  /*external ForceLink links(List<LinkDatum> links);*/
  external dynamic /*List<LinkDatum>|ForceLink*/ links([List<LinkDatum> links]);
  /*external Func3<NodeDatum, num, List<NodeDatum>, String|num> id();*/
  /*external ForceLink id(
    String id(NodeDatum node, num i, List<NodeDatum> nodesData));*/
  external dynamic /*Func3<NodeDatum, num, List<NodeDatum>, String|num>|ForceLink*/ id(
      [String id(NodeDatum node, num i, List<NodeDatum> nodesData)]);
  /*external Func3<LinkDatum, num, List<LinkDatum>, num> distance();*/
  /*external ForceLink distance(num distance);*/
  /*external ForceLink distance(
    num distance(LinkDatum link, num i, List<LinkDatum> links));*/
  external dynamic /*Func3<LinkDatum, num, List<LinkDatum>, num>|ForceLink*/ distance(
      [dynamic /*num|Func3<LinkDatum, num, List<LinkDatum>, num>*/ distance]);
  /*external Func3<LinkDatum, num, List<LinkDatum>, num> strength();*/
  /*external ForceLink strength(num strength);*/
  /*external ForceLink strength(
    num strength(LinkDatum link, num i, List<LinkDatum> links));*/
  external dynamic /*Func3<LinkDatum, num, List<LinkDatum>, num>|ForceLink*/ strength(
      [dynamic /*num|Func3<LinkDatum, num, List<LinkDatum>, num>*/ strength]);
  /*external num iterations();*/
  /*external ForceLink iterations(num iterations);*/
  external dynamic /*num|ForceLink*/ iterations([num iterations]);
}

/*external ForceLink<NodeDatum,LinksDatum> forceLink<NodeDatum extends SimulationNodeDatum, LinksDatum extends SimulationLinkDatum<NodeDatum>>();*/
/*external ForceLink<NodeDatum,LinksDatum> forceLink<NodeDatum extends SimulationNodeDatum, LinksDatum extends SimulationLinkDatum<NodeDatum>>(List<LinksDatum> links);*/
@JS()
external ForceLink<dynamic/*=NodeDatum*/, dynamic/*=LinksDatum*/ >
    forceLink/*<NodeDatum extends SimulationNodeDatum, LinksDatum extends SimulationLinkDatum<NodeDatum>>*/([List<dynamic/*=LinksDatum*/ > links]);

/// Many Body ----------------------------------------------------------------
@anonymous
@JS()
abstract class ForceManyBody<NodeDatum extends SimulationNodeDatum>
    implements Force<NodeDatum, dynamic> {
  /*external Func3<NodeDatum, num, List<NodeDatum>, num> strength();*/
  /*external ForceManyBody strength(num strength);*/
  /*external ForceManyBody strength(
    num strength(NodeDatum d, num i, List<NodeDatum> data));*/
  external dynamic /*Func3<NodeDatum, num, List<NodeDatum>, num>|ForceManyBody*/ strength(
      [dynamic /*num|Func3<NodeDatum, num, List<NodeDatum>, num>*/ strength]);
  /*external num theta();*/
  /*external ForceManyBody theta(num theta);*/
  external dynamic /*num|ForceManyBody*/ theta([num theta]);
  /*external num distanceMin();*/
  /*external ForceManyBody distanceMin(num distance);*/
  external dynamic /*num|ForceManyBody*/ distanceMin([num distance]);
  /*external num distanceMax();*/
  /*external ForceManyBody distanceMax(num distance);*/
  external dynamic /*num|ForceManyBody*/ distanceMax([num distance]);
}

@JS()
external ForceManyBody<dynamic/*=NodeDatum*/ >
    forceManyBody/*<NodeDatum extends SimulationNodeDatum>*/();

/// Positioning ----------------------------------------------------------------
@anonymous
@JS()
abstract class ForceX<NodeDatum extends SimulationNodeDatum>
    implements Force<NodeDatum, dynamic> {
  /*external Func3<NodeDatum, num, List<NodeDatum>, num> strength();*/
  /*external ForceX strength(num strength);*/
  /*external ForceX strength(
    num strength(NodeDatum d, num i, List<NodeDatum> data));*/
  external dynamic /*Func3<NodeDatum, num, List<NodeDatum>, num>|ForceX*/ strength(
      [dynamic /*num|Func3<NodeDatum, num, List<NodeDatum>, num>*/ strength]);
  /*external Func3<NodeDatum, num, List<NodeDatum>, num> x();*/
  /*external ForceX x(num x);*/
  /*external ForceX x(num x(NodeDatum d, num i, List<NodeDatum> data));*/
  external dynamic /*Func3<NodeDatum, num, List<NodeDatum>, num>|ForceX*/ x(
      [dynamic /*num|Func3<NodeDatum, num, List<NodeDatum>, num>*/ x]);
}

/*external ForceX<NodeDatum> forceX<NodeDatum extends SimulationNodeDatum>();*/
/*external ForceX<NodeDatum> forceX<NodeDatum extends SimulationNodeDatum>(num x);*/
/*external ForceX<NodeDatum> forceX<NodeDatum extends SimulationNodeDatum>(num x(NodeDatum d, num i, List<NodeDatum> data));*/
@JS()
external ForceX<dynamic/*=NodeDatum*/ > forceX/*<NodeDatum extends SimulationNodeDatum>*/(
    [dynamic /*num|Func3<NodeDatum, num, List<NodeDatum>, num>*/ x]);

@anonymous
@JS()
abstract class ForceY<NodeDatum extends SimulationNodeDatum>
    implements Force<NodeDatum, dynamic> {
  /*external Func3<NodeDatum, num, List<NodeDatum>, num> strength();*/
  /*external ForceY strength(num strength);*/
  /*external ForceY strength(
    num strength(NodeDatum d, num i, List<NodeDatum> data));*/
  external dynamic /*Func3<NodeDatum, num, List<NodeDatum>, num>|ForceY*/ strength(
      [dynamic /*num|Func3<NodeDatum, num, List<NodeDatum>, num>*/ strength]);
  /*external Func3<NodeDatum, num, List<NodeDatum>, num> y();*/
  /*external ForceY y(num y);*/
  /*external ForceY y(num y(NodeDatum d, num i, List<NodeDatum> data));*/
  external dynamic /*Func3<NodeDatum, num, List<NodeDatum>, num>|ForceY*/ y(
      [dynamic /*num|Func3<NodeDatum, num, List<NodeDatum>, num>*/ y]);
}

/*external ForceY<NodeDatum> forceY<NodeDatum extends SimulationNodeDatum>();*/
/*external ForceY<NodeDatum> forceY<NodeDatum extends SimulationNodeDatum>(num y);*/
/*external ForceY<NodeDatum> forceY<NodeDatum extends SimulationNodeDatum>(num y(NodeDatum d, num i, List<NodeDatum> data));*/
@JS()
external ForceY<dynamic/*=NodeDatum*/ > forceY/*<NodeDatum extends SimulationNodeDatum>*/(
    [dynamic /*num|Func3<NodeDatum, num, List<NodeDatum>, num>*/ y]);
