@JS()
library sales_demo;
import 'package:d3/d3.dart' as d3;
import 'package:js/js.dart';

import 'dart:async';
import 'dart:html';
import 'dart:math' as math;

class Margins {
  int left, right, top, bottom;
  Margins({this.left, this.right, this.top, this.bottom});
}

@anonymous
@JS()
class SalesEntry {
  external set sales(v);
  external get sales;
  external String get salesperson;
}

main() {
  // set the dimensions and margins of the graph
  var margin = new Margins(top: 20, right: 20, bottom: 30, left: 40),
      width = 960 - margin.left - margin.right,
      height = 500 - margin.top - margin.bottom;

  // set the ranges
  var x = d3.scaleBand().range([0, width]).padding(0.1);
  var y = d3.scaleLinear().range([height, 0]);

  // append the svg object to the body of the page
  // append a 'group' element to 'svg'
  // moves the 'group' element to the top left margin
  d3.Selection svg = d3
      .select("body")
      .append("svg")
      .attr("width", width + margin.left + margin.right)
      .attr("height", height + margin.top + margin.bottom)
      .append("g")
      .attr("transform", "translate(${margin.left},${margin.top})");

  // get the data
  d3.csv("sales.csv", allowInterop((error, d3.DSVParsedArray data, [_, __]) {
    if (error != null) throw error;

    // format the data
    for (var d in data) {
      d.sales = double.parse(d.sales);
    }

    // Scale the range of the data in the domains
    x.domain(data.map((d) => d.salesperson).toList());
    y.domain([
      0,
      d3.max(data, allowInterop((d, _, __) {
        return d.sales;
      }))
    ]);

    // append the rectangles for the bar chart
    svg
        .selectAll(".bar")
        .data(data)
        .enter()
        .append("rect")
        .attr("class", "bar")
        .attr("x",
            allowInterop((SalesEntry d, index, groups) => x(d.salesperson)))
        .attr("width", x.bandwidth())
        .attr("y", allowInterop((SalesEntry d, index, groups) {
      return y(d.sales);
    })).attr("height", allowInterop((SalesEntry d, index, groups) {
      return height - y(d.sales);
    }));

    // add the x Axis
    svg
        .append("g")
        .attr("transform", "translate(0,$height)")
        .JS$call(d3.axisBottom(x));

    // add the y Axis
    svg.append("g").JS$call(d3.axisLeft(y));
  }));
}
