part of 'jaspr_clean_syntax.dart';

/// The `<svg>` element is a container that defines a new coordinate system and viewport. 
/// It is used as the outermost element of SVG documents, but it can also be used to embed an SVG fragment inside an SVG or HTML document.
///
/// - [viewBox]: The SVG viewport coordinates for the current SVG fragment.
/// - [width]: The displayed width of the rectangular viewport. (Not the width of its coordinate system.)
/// - [height]: The displayed height of the rectangular viewport. (Not the height of its coordinate system.)
///
/// Example usage:
/// ```dart
/// svg(
///   [
///     Text('SVG content here'),
///   ],
///   viewBox: '0 0 100 100',
///   width: Unit.px(100),
///   height: Unit.px(100),
///   id: 'svg1',
///   classes: 'svg-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'svg'},
///   events: {'onLoad': () => print('SVG loaded')},
/// )
/// ```
class Svg extends DomComponent {
  final List<Component> children;
  final String? viewBox;
  final Unit? width;
  final Unit? height;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Svg({
    required this.children,
    this.viewBox,
    this.width,
    this.height,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'svg',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (viewBox != null) 'viewBox': viewBox,
            if (width != null) 'width': width.value,
            if (height != null) 'height': height.value,
          },
          events: events,
          children: children,
        );
}
/// The `<rect>` element is a basic SVG shape that draws rectangles, defined by their position, width, and height. The rectangles may have their corners rounded.
///
/// - [x]: The x coordinate of the rect.
/// - [y]: The y coordinate of the rect.
/// - [width]: The width of the rect.
/// - [height]: The height of the rect.
/// - [fill]: The color (or gradient or pattern) used to paint the shape.
/// - [stroke]: The color (or gradient or pattern) used to paint the outline of the shape.
/// - [strokeWidth]: The width of the stroke to be applied to the shape.
///
/// Example usage:
/// ```dart
/// rect(
///   [],
///   x: '10',
///   y: '10',
///   width: '100',
///   height: '100',
///   fill: Colors.red,
///   stroke: Colors.black,
///   strokeWidth: '2',
///   id: 'rect1',
///   classes: 'rect-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'rect'},
///   events: {'onClick': () => print('Rect clicked')},
/// )
/// ```
class Rect extends DomComponent {
  final List<Component> children;
  final String? x;
  final String? y;
  final String? width;
  final String? height;
  final Color? fill;
  final Color? stroke;
  final String? strokeWidth;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Rect({
    required this.children,
    this.x,
    this.y,
    this.width,
    this.height,
    this.fill,
    this.stroke,
    this.strokeWidth,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'rect',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (x != null) 'x': x,
            if (y != null) 'y': y,
            if (width != null) 'width': width,
            if (height != null) 'height': height,
            if (fill != null) 'fill': fill.value,
            if (stroke != null) 'stroke': stroke.value,
            if (strokeWidth != null) 'stroke-width': strokeWidth,
          },
          events: events,
          children: children,
        );
}
/// The `<circle>` SVG element is an SVG basic shape, used to draw circles based on a center point and a radius.
///
/// - [cx]: The x-axis coordinate of the center of the circle.
/// - [cy]: The y-axis coordinate of the center of the circle.
/// - [r]: The radius of the circle.
/// - [fill]: The color (or gradient or pattern) used to paint the shape.
/// - [stroke]: The color (or gradient or pattern) used to paint the outline of the shape.
/// - [strokeWidth]: The width of the stroke to be applied to the shape.
///
/// Example usage:
/// ```dart
/// Circle(
///   [],
///   cx: '50',
///   cy: '50',
///   r: '40',
///   fill: Colors.red,
///   stroke: Colors.black,
///   strokeWidth: '2',
///   id: 'circle1',
///   classes: 'circle-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'circle'},
///   events: {'onClick': () => print('Circle clicked')},
/// )
/// ```
class Circle extends DomComponent {
  final List<Component> children;
  final String? cx;
  final String? cy;
  final String? r;
  final Color? fill;
  final Color? stroke;
  final String? strokeWidth;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Circle({
    required this.children,
    this.cx,
    this.cy,
    this.r,
    this.fill,
    this.stroke,
    this.strokeWidth,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'circle',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (cx != null) 'cx': cx,
            if (cy != null) 'cy': cy,
            if (r != null) 'r': r,
            if (fill != null) 'fill': fill.value,
            if (stroke != null) 'stroke': stroke.value,
            if (strokeWidth != null) 'stroke-width': strokeWidth,
          },
          events: events,
          children: children,
        );
}

/// The `<ellipse>` element is an SVG basic shape, used to create ellipses based on a center coordinate, and both their x and y radius.
///
/// - [cx]: The x-axis coordinate of the center of the ellipse.
/// - [cy]: The y-axis coordinate of the center of the ellipse.
/// - [rx]: The radius of the ellipse on the x axis.
/// - [ry]: The radius of the ellipse on the y axis.
/// - [fill]: The color (or gradient or pattern) used to paint the shape.
/// - [stroke]: The color (or gradient or pattern) used to paint the outline of the shape.
/// - [strokeWidth]: The width of the stroke to be applied to the shape.
///
/// Example usage:
/// ```dart
/// Ellipse(
///   [],
///   cx: '50',
///   cy: '50',
///   rx: '40',
///   ry: '20',
///   fill: Colors.red,
///   stroke: Colors.black,
///   strokeWidth: '2',
///   id: 'ellipse1',
///   classes: 'ellipse-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'ellipse'},
///   events: {'onClick': () => print('Ellipse clicked')},
/// )
/// ```
class Ellipse extends DomComponent {
  final List<Component> children;
  final String? cx;
  final String? cy;
  final String? rx;
  final String? ry;
  final Color? fill;
  final Color? stroke;
  final String? strokeWidth;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Ellipse({
    required this.children,
    this.cx,
    this.cy,
    this.rx,
    this.ry,
    this.fill,
    this.stroke,
    this.strokeWidth,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'ellipse',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (cx != null) 'cx': cx,
            if (cy != null) 'cy': cy,
            if (rx != null) 'rx': rx,
            if (ry != null) 'ry': ry,
            if (fill != null) 'fill': fill.value,
            if (stroke != null) 'stroke': stroke.value,
            if (strokeWidth != null) 'stroke-width': strokeWidth,
          },
          events: events,
          children: children,
        );
}

/// The `<line>` element is an SVG basic shape used to create a line connecting two points.
///
/// - [x1]: Defines the x-axis coordinate of the line starting point.
/// - [y1]: Defines the y-axis coordinate of the line starting point.
/// - [x2]: Defines the x-axis coordinate of the line ending point.
/// - [y2]: Defines the y-axis coordinate of the line ending point.
/// - [fill]: The color (or gradient or pattern) used to paint the shape.
/// - [stroke]: The color (or gradient or pattern) used to paint the outline of the shape.
/// - [strokeWidth]: The width of the stroke to be applied to the shape.
///
/// Example usage:
/// ```dart
/// Line(
///   [],
///   x1: '10',
///   y1: '10',
///   x2: '100',
///   y2: '100',
///   fill: Colors.red,
///   stroke: Colors.black,
///   strokeWidth: '2',
///   id: 'line1',
///   classes: 'line-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'line'},
///   events: {'onClick': () => print('Line clicked')},
/// )
/// ```
class Line extends DomComponent {
  final List<Component> children;
  final String? x1;
  final String? y1;
  final String? x2;
  final String? y2;
  final Color? fill;
  final Color? stroke;
  final String? strokeWidth;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Line({
    required this.children,
    this.x1,
    this.y1,
    this.x2,
    this.y2,
    this.fill,
    this.stroke,
    this.strokeWidth,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'line',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (x1 != null) 'x1': x1,
            if (y1 != null) 'y1': y1,
            if (x2 != null) 'x2': x2,
            if (y2 != null) 'y2': y2,
            if (fill != null) 'fill': fill.value,
            if (stroke != null) 'stroke': stroke.value,
            if (strokeWidth != null) 'stroke-width': strokeWidth,
          },
          events: events,
          children: children,
        );
}
/// The `<path>` SVG element is the generic element to define a shape. All the basic shapes can be created with a path element.
///
/// - [d]: This attribute defines the shape of the path.
/// - [fill]: The color (or gradient or pattern) used to paint the shape.
/// - [stroke]: The color (or gradient or pattern) used to paint the outline of the shape.
/// - [strokeWidth]: The width of the stroke to be applied to the shape.
///
/// Example usage:
/// ```dart
/// Path(
///   [],
///   d: 'M10 10 H 90 V 90 H 10 L 10 10',
///   fill: Colors.red,
///   stroke: Colors.black,
///   strokeWidth: '2',
///   id: 'path1',
///   classes: 'path-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'path'},
///   events: {'onClick': () => print('Path clicked')},
/// )
/// ```
class Path extends DomComponent {
  final List<Component> children;
  final String? d;
  final Color? fill;
  final Color? stroke;
  final String? strokeWidth;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Path({
    required this.children,
    this.d,
    this.fill,
    this.stroke,
    this.strokeWidth,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'path',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (d != null) 'd': d,
            if (fill != null) 'fill': fill.value,
            if (stroke != null) 'stroke': stroke.value,
            if (strokeWidth != null) 'stroke-width': strokeWidth,
          },
          events: events,
          children: children,
        );
}

/// The `<polygon>` element defines a closed shape consisting of a set of connected straight line segments. The last point is connected to the first point.
///
/// - [points]: This attribute defines the list of points (pairs of x,y absolute coordinates) required to draw the polygon.
/// - [fill]: The color (or gradient or pattern) used to paint the shape.
/// - [stroke]: The color (or gradient or pattern) used to paint the outline of the shape.
/// - [strokeWidth]: The width of the stroke to be applied to the shape.
///
/// Example usage:
/// ```dart
/// Polygon(
///   [],
///   points: '50,150 50,200 200,200 200,100',
///   fill: Colors.red,
///   stroke: Colors.black,
///   strokeWidth: '2',
///   id: 'polygon1',
///   classes: 'polygon-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'polygon'},
///   events: {'onClick': () => print('Polygon clicked')},
/// )
/// ```
class Polygon extends DomComponent {
  final List<Component> children;
  final String? points;
  final Color? fill;
  final Color? stroke;
  final String? strokeWidth;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Polygon({
    required this.children,
    this.points,
    this.fill,
    this.stroke,
    this.strokeWidth,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'polygon',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (points != null) 'points': points,
            if (fill != null) 'fill': fill.value,
            if (stroke != null) 'stroke': stroke.value,
            if (strokeWidth != null) 'stroke-width': strokeWidth,
          },
          events: events,
          children: children,
        );
}

/// The `<polyline>` SVG element is an SVG basic shape that creates straight lines connecting several points. Typically, a polyline is used to create open shapes as the last point doesn't have to be connected to the first point.
///
/// - [points]: This attribute defines the list of points (pairs of x,y absolute coordinates) required to draw the polyline.
/// - [fill]: The color (or gradient or pattern) used to paint the shape.
/// - [stroke]: The color (or gradient or pattern) used to paint the outline of the shape.
/// - [strokeWidth]: The width of the stroke to be applied to the shape.
///
/// Example usage:
/// ```dart
/// Polyline(
///   [],
///   points: '50,150 50,200 200,200 200,100',
///   fill: Colors.red,
///   stroke: Colors.black,
///   strokeWidth: '2',
///   id: 'polyline1',
///   classes: 'polyline-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'polyline'},
///   events: {'onClick': () => print('Polyline clicked')},
/// )
/// ```
class Polyline extends DomComponent {
  final List<Component> children;
  final String? points;
  final Color? fill;
  final Color? stroke;
  final String? strokeWidth;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Polyline({
    required this.children,
    this.points,
    this.fill,
    this.stroke,
    this.strokeWidth,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'polyline',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (points != null) 'points': points,
            if (fill != null) 'fill': fill.value,
            if (stroke != null) 'stroke': stroke.value,
            if (strokeWidth != null) 'stroke-width': strokeWidth,
          },
          events: events,
          children: children,
        );
}