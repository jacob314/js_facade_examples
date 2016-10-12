@JS("d3")
library d3_scale;

import "package:js/js.dart";
import "d3-time.dart";
import "package:func/func.dart";
import "dart:html";

/// Type definitions for D3JS d3-scale module v1.0.3
/// Project: https://github.com/d3/d3-scale/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
import "d3-time.dart" show CountableTimeInterval, TimeInterval;

/// -------------------------------------------------------------------------------
/// Shared Types and Interfaces
/// -------------------------------------------------------------------------------
typedef Func1<num, U> InterpolatorFactory<T, U>(T a, T b);

/// -------------------------------------------------------------------------------
/// Linear Scale Factory
/// -------------------------------------------------------------------------------
@anonymous
@JS()
abstract class ScaleLinear<Range, Output> {
  external Output call(dynamic /*num|{ valueOf(): number }*/ value);

  /// Important: While value should come out of range R, this is method is only applicable to
  /// values that can be coerced to numeric. Otherwise, returns NaN
  external num invert(dynamic /*num|{ valueOf(): number }*/ value);
  /*external List<num> domain();*/
  /*external ScaleLinear domain(List<num|{ valueOf(): number }> domain);*/
  external dynamic /*List<num>|ScaleLinear*/ domain(
      [List<dynamic /*num|{ valueOf(): number }*/ > domain]);
  /*external List<Range> range();*/
  /*external ScaleLinear range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleLinear*/ range([List<Range> range]);

  /// Important: While value should come out of range R, this is method is only applicable to
  /// values that can be coerced to numeric.
  external ScaleLinear rangeRound(
      List<dynamic /*num|{ valueOf(): number }*/ > range);
  /*external bool clamp();*/
  /*external ScaleLinear<Range, Output> clamp(bool clamp);*/
  external dynamic /*bool|ScaleLinear<Range,Output>*/ clamp([bool clamp]);
  /*external InterpolatorFactory<dynamic, dynamic> interpolate();*/
  /*external ScaleLinear interpolate(
    InterpolatorFactory<Range, Output> interpolate);*/
  /*external ScaleLinear<Range,NewOutput> interpolate<NewOutput>(InterpolatorFactory<Range,NewOutput> interpolate);*/
  external dynamic /*InterpolatorFactory<dynamic,dynamic>|ScaleLinear|ScaleLinear<Range,NewOutput>*/ interpolate/*<NewOutput>*/(
      [InterpolatorFactory /*InterpolatorFactory<Range,Output>|InterpolatorFactory<Range,NewOutput>*/ interpolate]);
  external List<num> ticks([num count]);
  external Func1<dynamic /*num|{ valueOf(): number }*/, String> tickFormat(
      [num count, String specifier]);
  external ScaleLinear nice([num count]);
  external ScaleLinear<Range, Output> copy();
}

/*external ScaleLinear<num, num> scaleLinear();*/
/*external ScaleLinear<Output,Output> scaleLinear<Output>();*/
/*external ScaleLinear<Range,Output> scaleLinear<Range, Output>();*/
@JS()
external ScaleLinear /*ScaleLinear<num,num>|ScaleLinear<Output,Output>|ScaleLinear<Range,Output>*/ scaleLinear/*<Output, Range>*/();

/// -------------------------------------------------------------------------------
/// Power Scale Factories
/// -------------------------------------------------------------------------------
@anonymous
@JS()
abstract class ScalePower<Range, Output> {
  external Output call(dynamic /*num|{ valueOf(): number }*/ value);

  /// Important: While value should come out of range R, this is method is only applicable to
  /// values that can be coerced to numeric. Otherwise, returns NaN
  external num invert(dynamic /*num|{ valueOf(): number }*/ value);
  /*external List<num> domain();*/
  /*external ScalePower domain(List<num|{ valueOf(): number }> domain);*/
  external dynamic /*List<num>|ScalePower*/ domain(
      [List<dynamic /*num|{ valueOf(): number }*/ > domain]);
  /*external List<Range> range();*/
  /*external ScalePower range(List<Range> range);*/
  external dynamic /*List<Range>|ScalePower*/ range([List<Range> range]);

  /// Important: While value should come out of range R, this is method is only applicable to
  /// values that can be coerced to numeric.
  external ScalePower rangeRound(
      List<dynamic /*num|{ valueOf(): number }*/ > range);
  /*external bool clamp();*/
  /*external ScalePower clamp(bool clamp);*/
  external dynamic /*bool|ScalePower*/ clamp([bool clamp]);
  /*external InterpolatorFactory<dynamic, dynamic> interpolate();*/
  /*external ScalePower interpolate(InterpolatorFactory<Range, Output> interpolate);*/
  /*external ScalePower<Range,NewOutput> interpolate<NewOutput>(InterpolatorFactory<Range,NewOutput> interpolate);*/
  external dynamic /*InterpolatorFactory<dynamic,dynamic>|ScalePower|ScalePower<Range,NewOutput>*/ interpolate/*<NewOutput>*/(
      [InterpolatorFactory /*InterpolatorFactory<Range,Output>|InterpolatorFactory<Range,NewOutput>*/ interpolate]);
  external List<num> ticks([num count]);
  external Func1<dynamic /*num|{ valueOf(): number }*/, String> tickFormat(
      [num count, String specifier]);
  external ScalePower nice([num count]);
  external ScalePower<Range, Output> copy();
  /*external num exponent();*/
  /*external ScalePower exponent(num exponent);*/
  external dynamic /*num|ScalePower*/ exponent([num exponent]);
}

/*external ScalePower<num, num> scalePow();*/
/*external ScalePower<Output,Output> scalePow<Output>();*/
/*external ScalePower<Range,Output> scalePow<Range, Output>();*/
@JS()
external ScalePower /*ScalePower<num,num>|ScalePower<Output,Output>|ScalePower<Range,Output>*/ scalePow/*<Output, Range>*/();
/*external ScalePower<num, num> scaleSqrt();*/
/*external ScalePower<Output,Output> scaleSqrt<Output>();*/
/*external ScalePower<Range,Output> scaleSqrt<Range, Output>();*/
@JS()
external ScalePower /*ScalePower<num,num>|ScalePower<Output,Output>|ScalePower<Range,Output>*/ scaleSqrt/*<Output, Range>*/();

/// -------------------------------------------------------------------------------
/// Logarithmic Scale Factory
/// -------------------------------------------------------------------------------
@anonymous
@JS()
abstract class ScaleLogarithmic<Range, Output> {
  external Output call(dynamic /*num|{ valueOf(): number }*/ value);

  /// Important: While value should come out of range R, this is method is only applicable to
  /// values that can be coerced to numeric. Otherwise, returns NaN
  external num invert(dynamic /*num|{ valueOf(): number }*/ value);
  /*external List<num> domain();*/
  /*external ScaleLogarithmic domain(List<num|{ valueOf(): number }> domain);*/
  external dynamic /*List<num>|ScaleLogarithmic*/ domain(
      [List<dynamic /*num|{ valueOf(): number }*/ > domain]);
  /*external List<Range> range();*/
  /*external ScaleLogarithmic range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleLogarithmic*/ range([List<Range> range]);

  /// Important: While value should come out of range R, this is method is only applicable to
  /// values that can be coerced to numeric.
  external ScaleLogarithmic rangeRound(
      List<dynamic /*num|{ valueOf(): number }*/ > range);
  /*external bool clamp();*/
  /*external ScaleLogarithmic clamp(bool clamp);*/
  external dynamic /*bool|ScaleLogarithmic*/ clamp([bool clamp]);
  /*external InterpolatorFactory<dynamic, dynamic> interpolate();*/
  /*external ScaleLogarithmic interpolate(
    InterpolatorFactory<Range, Output> interpolate);*/
  /*external ScaleLogarithmic<Range,NewOutput> interpolate<NewOutput>(InterpolatorFactory<Range,NewOutput> interpolate);*/
  external dynamic /*InterpolatorFactory<dynamic,dynamic>|ScaleLogarithmic|ScaleLogarithmic<Range,NewOutput>*/ interpolate/*<NewOutput>*/(
      [InterpolatorFactory /*InterpolatorFactory<Range,Output>|InterpolatorFactory<Range,NewOutput>*/ interpolate]);
  external List<num> ticks([num count]);
  external Func1<dynamic /*num|{ valueOf(): number }*/, String> tickFormat(
      [num count, String specifier]);
  external ScaleLogarithmic nice([num count]);
  external ScaleLogarithmic<Range, Output> copy();
  /*external num base();*/
  /*external ScaleLogarithmic base(num base);*/
  external dynamic /*num|ScaleLogarithmic*/ base([num base]);
}

/*external ScaleLogarithmic<num, num> scaleLog();*/
/*external ScaleLogarithmic<Output,Output> scaleLog<Output>();*/
/*external ScaleLogarithmic<Range,Output> scaleLog<Range, Output>();*/
@JS()
external ScaleLogarithmic /*ScaleLogarithmic<num,num>|ScaleLogarithmic<Output,Output>|ScaleLogarithmic<Range,Output>*/ scaleLog/*<Output, Range>*/();

/// -------------------------------------------------------------------------------
/// Identity Scale Factory
/// -------------------------------------------------------------------------------
@anonymous
@JS()
abstract class ScaleIdentity {
  external num call(dynamic /*num|{ valueOf(): number }*/ value);

  /// Important: While value should come out of range R, this is method is only applicable to
  /// values that can be coerced to numeric. Otherwise, returns NaN
  external num invert(dynamic /*num|{ valueOf(): number }*/ value);
  /*external List<num> domain();*/
  /*external ScaleIdentity domain(List<num|{ valueOf(): number }> domain);*/
  external dynamic /*List<num>|ScaleIdentity*/ domain(
      [List<dynamic /*num|{ valueOf(): number }*/ > domain]);
  /*external List<num> range();*/
  /*external ScaleIdentity range(List<Range|{ valueOf(): number }> range);*/
  external dynamic /*List<num>|ScaleIdentity*/ range(
      [List<dynamic /*Range|{ valueOf(): number }*/ > range]);
  external List<num> ticks([num count]);
  external Func1<dynamic /*num|{ valueOf(): number }*/, String> tickFormat(
      [num count, String specifier]);
  external ScaleIdentity nice([num count]);
  external ScaleIdentity copy();
}

@JS()
external ScaleIdentity scaleIdentity();

/// -------------------------------------------------------------------------------
/// Time Scale Factories
/// -------------------------------------------------------------------------------
@anonymous
@JS()
abstract class ScaleTime<Range, Output> {
  external Output call(DateTime value);

  /// Important: While value should come out of range R, this is method is only applicable to
  /// values that can be coerced to numeric. Otherwise, returns NaN
  external DateTime invert(dynamic /*num|{ valueOf(): number }*/ value);
  /*external List<DateTime> domain();*/
  /*external ScaleTime domain(List<DateTime> domain);*/
  external dynamic /*List<DateTime>|ScaleTime*/ domain([List<DateTime> domain]);
  /*external List<Range> range();*/
  /*external ScaleTime range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleTime*/ range([List<Range> range]);

  /// Important: While value should come out of range R, this is method is only applicable to
  /// values that can be coerced to numeric.
  external ScaleTime rangeRound(
      List<dynamic /*num|{ valueOf(): number }*/ > range);
  /*external bool clamp();*/
  /*external ScaleTime clamp(bool clamp);*/
  external dynamic /*bool|ScaleTime*/ clamp([bool clamp]);
  /*external InterpolatorFactory<dynamic, dynamic> interpolate();*/
  /*external ScaleTime interpolate(InterpolatorFactory<Range, Output> interpolate);*/
  /*external ScaleTime<Range,NewOutput> interpolate<NewOutput>(InterpolatorFactory<Range,NewOutput> interpolate);*/
  external dynamic /*InterpolatorFactory<dynamic,dynamic>|ScaleTime|ScaleTime<Range,NewOutput>*/ interpolate/*<NewOutput>*/(
      [InterpolatorFactory /*InterpolatorFactory<Range,Output>|InterpolatorFactory<Range,NewOutput>*/ interpolate]);
  /*external List<DateTime> ticks();*/
  /*external List<DateTime> ticks(num count);*/
  /*external List<DateTime> ticks(TimeInterval interval);*/
  external List<DateTime> ticks([dynamic /*num|TimeInterval*/ count_interval]);
  /*external Func1<DateTime, String> tickFormat();*/
  /*external Func1<DateTime, String> tickFormat(num count, [String specifier]);*/
  /*external Func1<DateTime, String> tickFormat(TimeInterval interval,
    [String specifier]);*/
  external Func1<DateTime, String> tickFormat(
      [dynamic /*num|TimeInterval*/ count_interval, String specifier]);
  /*external ScaleTime nice();*/
  /*external ScaleTime nice(num count);*/
  /*external ScaleTime nice(CountableTimeInterval interval, [num step]);*/
  external ScaleTime nice(
      [dynamic /*num|CountableTimeInterval*/ count_interval, num step]);
  external ScaleTime<Range, Output> copy();
}

/*external ScaleTime<num, num> scaleTime();*/
/*external ScaleTime<Output,Output> scaleTime<Output>();*/
/*external ScaleTime<Range,Output> scaleTime<Range, Output>();*/
@JS()
external ScaleTime /*ScaleTime<num,num>|ScaleTime<Output,Output>|ScaleTime<Range,Output>*/ scaleTime/*<Output, Range>*/();
/*external ScaleTime<num, num> scaleUtc();*/
/*external ScaleTime<Output,Output> scaleUtc<Output>();*/
/*external ScaleTime<Range,Output> scaleUtc<Range, Output>();*/
@JS()
external ScaleTime /*ScaleTime<num,num>|ScaleTime<Output,Output>|ScaleTime<Range,Output>*/ scaleUtc/*<Output, Range>*/();

/// -------------------------------------------------------------------------------
/// Sequential Scale Factory
/// -------------------------------------------------------------------------------
@anonymous
@JS()
abstract class ScaleSequential<Output> {
  external Output call(dynamic /*num|{ valueOf(): number }*/ value);
  /*external Tuple of <num,num> domain();*/
  /*external ScaleSequential domain(Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }> domain);*/
  external dynamic /*Tuple of <num,num>|ScaleSequential*/ domain(
      [List<
          dynamic /*num|{ valueOf(): number }*/ > /*Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }>*/ domain]);
  /*external bool clamp();*/
  /*external ScaleSequential clamp(bool clamp);*/
  external dynamic /*bool|ScaleSequential*/ clamp([bool clamp]);
  /*external Func1<num, Output> interpolator();*/
  /*external ScaleSequential interpolator(Func1<num, Output> interpolator);*/
  /*external ScaleSequential<NewOutput> interpolator<NewOutput>(Func1<num, NewOutput> interpolator);*/
  external dynamic /*Func1<num, Output>|ScaleSequential|ScaleSequential<NewOutput>*/ interpolator/*<NewOutput>*/(
      [dynamic /*Func1<num, Output>|Func1<num, NewOutput>*/ interpolator]);
  external ScaleSequential<Output> copy();
}

@JS()
external ScaleSequential<dynamic/*=Output*/ > scaleSequential/*<Output>*/(
    Func1<num, dynamic/*=Output*/ > interpolator);

/// -------------------------------------------------------------------------------
/// Color Interpolators for Sequential Scale Factory
/// -------------------------------------------------------------------------------
@JS()
external String interpolateViridis(num t);
@JS()
external String interpolateMagma(num t);
@JS()
external String interpolateInferno(num t);
@JS()
external String interpolatePlasma(num t);
@JS()
external String interpolateRainbow(num t);
@JS()
external String interpolateWarm(num t);
@JS()
external String interpolateCool(num t);
@JS()
external String interpolateCubehelixDefault(num t);

/// -------------------------------------------------------------------------------
/// Quantize Scale Factory
/// -------------------------------------------------------------------------------
@anonymous
@JS()
abstract class ScaleQuantize<Range> {
  external Range call(dynamic /*num|{ valueOf(): number }*/ value);

  /// Important: While value should come out of range R, this is method is only applicable to
  /// values that can be coerced to numeric. Otherwise, returns NaN
  external List<num> /*Tuple of <num,num>*/ invertExtent(Range value);
  /*external Tuple of <num,num> domain();*/
  /*external ScaleQuantize domain(Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }> domain);*/
  external dynamic /*Tuple of <num,num>|ScaleQuantize*/ domain(
      [List<
          dynamic /*num|{ valueOf(): number }*/ > /*Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }>*/ domain]);
  /*external List<Range> range();*/
  /*external ScaleQuantize range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleQuantize*/ range([List<Range> range]);
  external List<num> ticks([num count]);
  external Func1<dynamic /*num|{ valueOf(): number }*/, String> tickFormat(
      [num count, String specifier]);
  external ScaleQuantize nice([num count]);
  external ScaleQuantize<Range> copy();
}

/*external ScaleQuantize<num> scaleQuantize();*/
/*external ScaleQuantize<Range> scaleQuantize<Range>();*/
@JS()
external ScaleQuantize /*ScaleQuantize<num>|ScaleQuantize<Range>*/ scaleQuantize/*<Range>*/();

/// -------------------------------------------------------------------------------
/// Quantile Scale Factory
/// -------------------------------------------------------------------------------
@anonymous
@JS()
abstract class ScaleQuantile<Range> {
  external Range call(dynamic /*num|{ valueOf(): number }*/ value);
  external List<num> /*Tuple of <num,num>*/ invertExtent(Range value);
  /*external List<num> domain();*/
  /*external ScaleQuantile domain(List<num|{ valueOf(): number }> domain);*/
  external dynamic /*List<num>|ScaleQuantile*/ domain(
      [List<dynamic /*num|{ valueOf(): number }*/ > domain]);
  /*external List<Range> range();*/
  /*external ScaleQuantile range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleQuantile*/ range([List<Range> range]);
  external List<num> quantiles();
  external ScaleQuantile<Range> copy();
}

/*external ScaleQuantile<num> scaleQuantile();*/
/*external ScaleQuantile<Range> scaleQuantile<Range>();*/
@JS()
external ScaleQuantile /*ScaleQuantile<num>|ScaleQuantile<Range>*/ scaleQuantile/*<Range>*/();

/// -------------------------------------------------------------------------------
/// Threshold Scale Factory
/// -------------------------------------------------------------------------------

/// TODO: review Domain Type, should be naturally orderable
@anonymous
@JS()
abstract class ScaleThreshold<Domain extends dynamic /*num|String|DateTime*/,
    Range> {
  external Range call(Domain value);

  /// Important: While value should come out of range R, this is method is only applicable to
  /// values that can be coerced to numeric. Otherwise, returns NaN
  external dynamic /*Tuple of <Domain,Domain>|Tuple of <dynamic,Domain>|Tuple of <Domain,dynamic>|Tuple of <dynamic,dynamic>*/ invertExtent(
      Range value);
  /*external List<Domain> domain();*/
  /*external ScaleThreshold domain(List<Domain> domain);*/
  external dynamic /*List<Domain>|ScaleThreshold*/ domain(
      [List<Domain> domain]);
  /*external List<Range> range();*/
  /*external ScaleThreshold range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleThreshold*/ range([List<Range> range]);
  external ScaleThreshold<Domain, Range> copy();
}

/*external ScaleThreshold<num, num> scaleThreshold();*/
/*external ScaleThreshold<Domain,Range> scaleThreshold<Domain extends num|String|DateTime, Range>();*/
@JS()
external ScaleThreshold /*ScaleThreshold<num,num>|ScaleThreshold<Domain,Range>*/ scaleThreshold/*<Domain, Range>*/();

/// -------------------------------------------------------------------------------
/// Ordinal Scale Factory
/// -------------------------------------------------------------------------------
@anonymous
@JS()
abstract class ScaleOrdinal<Domain extends dynamic /*{ toString(): string }*/,
    Range> {
  external Range call(Domain x);
  /*external List<Domain> domain();*/
  /*external ScaleOrdinal domain(List<Domain> domain);*/
  external dynamic /*List<Domain>|ScaleOrdinal*/ domain([List<Domain> domain]);
  /*external List<Range> range();*/
  /*external ScaleOrdinal range(List<Range> range);*/
  external dynamic /*List<Range>|ScaleOrdinal*/ range([List<Range> range]);
  /*external Range|{ name: 'implicit' } unknown();*/
  /*external ScaleOrdinal unknown(Range|{ name: 'implicit' } value);*/
  external dynamic /*Range|{ name: 'implicit' }|ScaleOrdinal*/ unknown(
      [dynamic /*Range|{ name: 'implicit' }*/ value]);
  external ScaleOrdinal<Domain, Range> copy();
}

/*external ScaleOrdinal<String,Range> scaleOrdinal<Range>([List<Range> range]);*/
/*external ScaleOrdinal<Domain,Range> scaleOrdinal<Domain extends { toString(): string }, Range>([List<Range> range]);*/
@JS()
external ScaleOrdinal /*ScaleOrdinal<String,Range>|ScaleOrdinal<Domain,Range>*/ scaleOrdinal/*<Range, Domain extends { toString(): string }>*/(
    [List<dynamic/*=Range*/ > range]);
@JS()
external dynamic /*{ name: 'implicit' }*/ get scaleImplicit;

/// -------------------------------------------------------------------------------
/// Band Scale Factory
/// -------------------------------------------------------------------------------
@anonymous
@JS()
abstract class ScaleBand<Domain extends dynamic /*{ toString(): string }*/ > {
  external dynamic /*num|dynamic*/ call(Domain x);
  /*external List<Domain> domain();*/
  /*external ScaleBand domain(List<Domain> domain);*/
  external dynamic /*List<Domain>|ScaleBand*/ domain([List<Domain> domain]);
  /*external Tuple of <num,num> range();*/
  /*external ScaleBand range(Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }> range);*/
  external dynamic /*Tuple of <num,num>|ScaleBand*/ range(
      [List<
          dynamic /*num|{ valueOf(): number }*/ > /*Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }>*/ range]);
  external ScaleBand rangeRound(
      List<
          dynamic /*num|{ valueOf(): number }*/ > /*Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }>*/ range);
  /*external bool round();*/
  /*external ScaleBand round(bool round);*/
  external dynamic /*bool|ScaleBand*/ round([bool round]);
  /*external num paddingInner();*/
  /*external ScaleBand paddingInner(num padding);*/
  external dynamic /*num|ScaleBand*/ paddingInner([num padding]);
  /*external num paddingOuter();*/
  /*external ScaleBand paddingOuter(num padding);*/
  external dynamic /*num|ScaleBand*/ paddingOuter([num padding]);

  /// Returns the inner padding.
  /*external num padding();*/
  /// A convenience method for setting the inner and outer padding to the same padding value.
  /*external ScaleBand padding(num padding);*/
  external dynamic /*num|ScaleBand*/ padding([num padding]);
  /*external num align();*/
  /*external ScaleBand align(num align);*/
  external dynamic /*num|ScaleBand*/ align([num align]);
  external num bandwidth();
  external num step();
  external ScaleBand<Domain> copy();
}

/*external ScaleBand<String> scaleBand();*/
/*external ScaleBand<Domain> scaleBand<Domain extends { toString(): string }>();*/
@JS()
external ScaleBand /*ScaleBand<String>|ScaleBand<Domain>*/ scaleBand/*<Domain extends { toString(): string }>*/();

/// -------------------------------------------------------------------------------
/// Point Scale Factory
/// -------------------------------------------------------------------------------
@anonymous
@JS()
abstract class ScalePoint<Domain extends dynamic /*{ toString(): string }*/ > {
  external dynamic /*num|dynamic*/ call(Domain x);
  /*external List<Domain> domain();*/
  /*external ScalePoint domain(List<Domain> domain);*/
  external dynamic /*List<Domain>|ScalePoint*/ domain([List<Domain> domain]);
  /*external Tuple of <num,num> range();*/
  /*external ScalePoint range(Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }> range);*/
  external dynamic /*Tuple of <num,num>|ScalePoint*/ range(
      [List<
          dynamic /*num|{ valueOf(): number }*/ > /*Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }>*/ range]);
  external ScalePoint rangeRound(
      List<
          dynamic /*num|{ valueOf(): number }*/ > /*Tuple of <num|{ valueOf(): number },num|{ valueOf(): number }>*/ range);
  /*external bool round();*/
  /*external ScalePoint round(bool round);*/
  external dynamic /*bool|ScalePoint*/ round([bool round]);

  /// Returns the current outer padding which defaults to 0.
  /// The outer padding determines the ratio of the range that is reserved for blank space
  /// before the first point and after the last point.
  /*external num padding();*/
  /// Sets the outer padding to the specified value which must be in the range [0, 1].
  /// The outer padding determines the ratio of the range that is reserved for blank space
  /// before the first point and after the last point.
  /*external ScalePoint padding(num padding);*/
  external dynamic /*num|ScalePoint*/ padding([num padding]);
  /*external num align();*/
  /*external ScalePoint align(num align);*/
  external dynamic /*num|ScalePoint*/ align([num align]);
  external num bandwidth();
  external num step();
  external ScalePoint<Domain> copy();
}

/*external ScalePoint<String> scalePoint();*/
/*external ScalePoint<Domain> scalePoint<Domain extends { toString(): string }>();*/
@JS()
external ScalePoint /*ScalePoint<String>|ScalePoint<Domain>*/ scalePoint/*<Domain extends { toString(): string }>*/();

/// -------------------------------------------------------------------------------
/// Categorical Color Schemas for Ordinal Scales
/// -------------------------------------------------------------------------------
@JS()
external List<String> get schemeCategory10;
@JS()
external List<String> get schemeCategory20;
@JS()
external List<String> get schemeCategory20b;
@JS()
external List<String> get schemeCategory20c;
