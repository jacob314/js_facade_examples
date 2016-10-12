@JS("d3")
library d3_time;

import "package:js/js.dart";
import "package:func/func.dart";

/// Type definitions for D3JS d3-time module v1.0.2
/// Project: https://github.com/d3/d3-time/
/// Definitions by: Tom Wanzek <https://github.com/tomwanzek>, Alex Ford <https://github.com/gustavderdrache>, Boris Yankov <https://github.com/borisyankov>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// ---------------------------------------------------------------
/// Interfaces
/// ---------------------------------------------------------------
@anonymous
@JS()
abstract class TimeInterval {
  external DateTime call(DateTime date);
  external DateTime floor(DateTime date);
  external DateTime round(DateTime date);
  external DateTime ceil(DateTime date);
  external DateTime offset(DateTime date, [num step]);
  external List<DateTime> range(DateTime start, DateTime stop, [num step]);
  external TimeInterval filter(bool test(DateTime date));
}

@anonymous
@JS()
abstract class CountableTimeInterval implements TimeInterval {
  external num count(DateTime start, DateTime end);
  external TimeInterval /*TimeInterval|Null*/ every(num step);
}

/// ---------------------------------------------------------------
/// Custom (Countable)Interval Factories
/// ---------------------------------------------------------------
/*external TimeInterval timeInterval(
    void floor(DateTime date), void offset(DateTime date, num step));*/
/*external CountableTimeInterval timeInterval(
    void floor(DateTime date),
    void offset(DateTime date, num step),
    num count(DateTime start, DateTime end),
    [num field(DateTime date)]);*/
@JS()
external Function /*TimeInterval|CountableTimeInterval*/ timeInterval(
    void floor(DateTime date), void offset(DateTime date, num step),
    [num count(DateTime start, DateTime end), num field(DateTime date)]);

/// ---------------------------------------------------------------
/// Built-In Factories and Date Array Creators
/// ---------------------------------------------------------------

/// local time ----------------------------------------------------------
@JS()
external CountableTimeInterval get timeMillisecond;
@JS()
external set timeMillisecond(CountableTimeInterval v);
@JS()
external List<DateTime> timeMilliseconds(DateTime start, DateTime stop,
    [num step]);
@JS()
external CountableTimeInterval get timeSecond;
@JS()
external set timeSecond(CountableTimeInterval v);
@JS()
external List<DateTime> timeSeconds(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get timeMinute;
@JS()
external set timeMinute(CountableTimeInterval v);
@JS()
external List<DateTime> timeMinutes(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get timeHour;
@JS()
external set timeHour(CountableTimeInterval v);
@JS()
external List<DateTime> timeHours(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get timeDay;
@JS()
external set timeDay(CountableTimeInterval v);
@JS()
external List<DateTime> timeDays(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get timeWeek;
@JS()
external set timeWeek(CountableTimeInterval v);
@JS()
external List<DateTime> timeWeeks(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get timeSunday;
@JS()
external set timeSunday(CountableTimeInterval v);
@JS()
external List<DateTime> timeSundays(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get timeMonday;
@JS()
external set timeMonday(CountableTimeInterval v);
@JS()
external List<DateTime> timeMondays(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get timeTuesday;
@JS()
external set timeTuesday(CountableTimeInterval v);
@JS()
external List<DateTime> timeTuesdays(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get timeWednesday;
@JS()
external set timeWednesday(CountableTimeInterval v);
@JS()
external List<DateTime> timeWednesdays(DateTime start, DateTime stop,
    [num step]);
@JS()
external CountableTimeInterval get timeThursday;
@JS()
external set timeThursday(CountableTimeInterval v);
@JS()
external List<DateTime> timeThursdays(DateTime start, DateTime stop,
    [num step]);
@JS()
external CountableTimeInterval get timeFriday;
@JS()
external set timeFriday(CountableTimeInterval v);
@JS()
external List<DateTime> timeFridays(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get timeSaturday;
@JS()
external set timeSaturday(CountableTimeInterval v);
@JS()
external List<DateTime> timeSaturdays(DateTime start, DateTime stop,
    [num step]);
@JS()
external CountableTimeInterval get timeMonth;
@JS()
external set timeMonth(CountableTimeInterval v);
@JS()
external List<DateTime> timeMonths(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get timeYear;
@JS()
external set timeYear(CountableTimeInterval v);
@JS()
external List<DateTime> timeYears(DateTime start, DateTime stop, [num step]);

/// utc Universal Coordinated Time ----------------------------------------------------------
@JS()
external CountableTimeInterval get utcMillisecond;
@JS()
external set utcMillisecond(CountableTimeInterval v);
@JS()
external List<DateTime> utcMilliseconds(DateTime start, DateTime stop,
    [num step]);
@JS()
external CountableTimeInterval get utcSecond;
@JS()
external set utcSecond(CountableTimeInterval v);
@JS()
external List<DateTime> utcSeconds(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get utcMinute;
@JS()
external set utcMinute(CountableTimeInterval v);
@JS()
external List<DateTime> utcMinutes(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get utcHour;
@JS()
external set utcHour(CountableTimeInterval v);
@JS()
external List<DateTime> utcHours(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get utcDay;
@JS()
external set utcDay(CountableTimeInterval v);
@JS()
external List<DateTime> utcDays(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get utcWeek;
@JS()
external set utcWeek(CountableTimeInterval v);
@JS()
external List<DateTime> utcWeeks(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get utcSunday;
@JS()
external set utcSunday(CountableTimeInterval v);
@JS()
external List<DateTime> utcSundays(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get utcMonday;
@JS()
external set utcMonday(CountableTimeInterval v);
@JS()
external List<DateTime> utcMondays(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get utcTuesday;
@JS()
external set utcTuesday(CountableTimeInterval v);
@JS()
external List<DateTime> utcTuesdays(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get utcWednesday;
@JS()
external set utcWednesday(CountableTimeInterval v);
@JS()
external List<DateTime> utcWednesdays(DateTime start, DateTime stop,
    [num step]);
@JS()
external CountableTimeInterval get utcThursday;
@JS()
external set utcThursday(CountableTimeInterval v);
@JS()
external List<DateTime> utcThursdays(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get utcFriday;
@JS()
external set utcFriday(CountableTimeInterval v);
@JS()
external List<DateTime> utcFridays(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get utcSaturday;
@JS()
external set utcSaturday(CountableTimeInterval v);
@JS()
external List<DateTime> utcSaturdays(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get utcMonth;
@JS()
external set utcMonth(CountableTimeInterval v);
@JS()
external List<DateTime> utcMonths(DateTime start, DateTime stop, [num step]);
@JS()
external CountableTimeInterval get utcYear;
@JS()
external set utcYear(CountableTimeInterval v);
@JS()
external List<DateTime> utcYears(DateTime start, DateTime stop, [num step]);
