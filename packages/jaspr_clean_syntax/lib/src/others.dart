part of 'jaspr_clean_syntax.dart';

/// A class representing an HTML `<details>` element.
///
/// The `Details` class is a specialized `DomComponent` that represents an HTML `<details>` element.
/// 
/// - [open]: Indicates whether or not the details — that is, the contents of the &lt;details&gt; element — are currently visible.
/// 
/// Example usage:
/// ```dart
/// Details(
///   [
///     Text('Details content here'),
///   ],
///   open: true,
///   id: 'details1',
///   classes: 'details-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'details'},
///   events: {'onToggle': () => print('Details toggled')},
/// )
/// ```
class Details extends DomComponent {
  final List<Component> children;
  final bool? open;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Details(
    this.children, {
    this.open,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'details',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (open == true) 'open': '',
          },
          events: events,
          children: children,
        );
}
/// A class representing an HTML `<dialog>` element.
///
/// The `Dialog` class is a specialized `DomComponent` that represents an HTML `<dialog>` element.
/// 
/// - [open]: Indicates that the dialog is active and can be interacted with. When the open attribute is not set, the dialog shouldn't be shown to the user.
/// 
/// Example usage:
/// ```dart
/// Dialog(
///   [
///     Text('Dialog content here'),
///   ],
///   open: true,
///   id: 'dialog1',
///   classes: 'dialog-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'dialog'},
///   events: {'onClose': () => print('Dialog closed')},
/// )
/// ```
class Dialog extends DomComponent {
  final List<Component> children;
  final bool? open;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Dialog(
    this.children, {
    this.open,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'dialog',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (open == true) 'open': '',
          },
          events: events,
          children: children,
        );
}

/// A class representing an HTML `<summary>` element.
///
/// The `Summary` class is a specialized `DomComponent` that represents an HTML `<summary>` element.
/// 
/// The `<summary>` HTML element specifies a summary, caption, or legend for a `<details>` element's disclosure box. Clicking the `<summary>` element toggles the state of the parent `<details>` element open and closed.
/// 
/// Example usage:
/// ```dart
/// Summary(
///   [
///     Text('Summary content here'),
///   ],
///   id: 'summary1',
///   classes: 'summary-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'summary'},
///   events: {'onClick': () => print('Summary clicked')},
/// )
/// ```
class Summary extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Summary(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'summary',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
          children: children,
        );
}
/// A class representing an HTML `<link>` element.
///
/// The `Link` class is a specialized `DomComponent` that represents an HTML `<link>` element.
/// The `<link>` HTML element specifies relationships between the current document and an external resource. This element is most commonly used to link to stylesheets, but is also used to establish site icons (both "favicon" style icons and icons for the home screen and apps on mobile devices) among other things.
///
/// - [href]: This attribute specifies the URL of the linked resource. A URL can be absolute or relative.
/// - [rel]: This attribute names a relationship of the linked document to the current document. The attribute must be a space-separated list of link type values.
/// - [type]: This attribute is used to define the type of the content linked to. The value of the attribute should be a MIME type such as text/html, text/css, and so on. The common use of this attribute is to define the type of stylesheet being referenced (such as text/css), but given that CSS is the only stylesheet language used on the web, not only is it possible to omit the type attribute, but is actually now recommended practice. It is also used on rel="preload" link types, to make sure the browser only downloads file types that it supports.
/// - [as]: This attribute is only used when rel="preload" or rel="prefetch" has been set on the &lt;link&gt; element. It specifies the type of content being loaded by the &lt;link&gt;, which is necessary for request matching, application of correct content security policy, and setting of correct Accept request header. Furthermore, rel="preload" uses this as a signal for request prioritization.
/// 
/// Example usage:
/// ```dart
/// Link(
///   href: 'https://example.com/style.css',
///   rel: 'stylesheet',
///   type: 'text/css',
///   as: 'style',
///   id: 'link1',
///   classes: 'link-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'link'},
///   events: {'onLoad': () => print('Link loaded')},
/// )
/// ```
class Link extends DomComponent {
  final String href;
  final String? rel;
  final String? type;
  final String? as;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Link({
    required this.href,
    this.rel,
    this.type,
    this.as,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'link',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            'href': href,
            if (rel != null) 'rel': rel,
            if (type != null) 'type': type,
            if (as != null) 'as': as,
          },
          events: events,
        );
}
/// A function representing an HTML `<script>` element.
///
/// The `<script>` HTML element is used to embed executable code or data; this is typically used to embed or refer to JavaScript code. The `<script>` element can also be used with other languages, such as WebGL's GLSL shader programming language and JSON.
///
/// - [async]: For classic scripts, if the async attribute is present, then the classic script will be fetched in parallel to parsing and evaluated as soon as it is available.
///   For module scripts, if the async attribute is present then the scripts and all their dependencies will be executed in the defer queue, therefore they will get fetched in parallel to parsing and evaluated as soon as they are available.
///   This attribute allows the elimination of parser-blocking JavaScript where the browser would have to load and evaluate scripts before continuing to parse. defer has a similar effect in this case.
/// - [defer]: This Boolean attribute is set to indicate to a browser that the script is meant to be executed after the document has been parsed, but before firing DOMContentLoaded.
///   Scripts with the defer attribute will prevent the DOMContentLoaded event from firing until the script has loaded and finished evaluating.
///   Scripts with the defer attribute will execute in the order in which they appear in the document.
///   This attribute allows the elimination of parser-blocking JavaScript where the browser would have to load and evaluate scripts before continuing to parse. async has a similar effect in this case.
/// - [src]: This attribute specifies the URI of an external script; this can be used as an alternative to embedding a script directly within a document.
///
/// Example usage:
/// ```dart
/// script(
///   [
///     Text('Your browser does not support the script element.'),
///   ],
///   src: 'https://example.com/script.js',
///   async: true,
///   defer: true,
///   id: 'script1',
///   classes: 'script-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'script'},
///   events: {'onLoad': () => print('Script loaded')},
/// )
/// ```
class Script extends DomComponent {
  final List<Component> children;
  final bool? async;
  final bool? defer;
  final String src;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Script({
    required this.children,
    this.async,
    this.defer,
    required this.src,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'script',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (async == true) 'async': '',
            if (defer == true) 'defer': '',
            'src': src,
          },
          events: events,
          children: children,
        );
}
