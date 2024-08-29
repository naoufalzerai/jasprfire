part of 'jaspr_clean_syntax.dart';
/// Represents an article component in the DOM.
///
/// An article component is used to structure content in a web page.
/// It can contain other components as its children.
///
/// Example usage:
/// ```dart
/// Article(
///   [
///     Text('Hello, world!'),
///     Image(url: 'https://example.com/image.jpg'),
///   ],
///   id: 'article1',
///   classes: 'article',
///   styles: Styles.background(color: Colors.black),
///   attributes: {'data-type': 'news'},
///   events: {'onClick': () => print('Article clicked')},
/// )
/// ```
class Article extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Article(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'article',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// A class representing an HTML `<aside>` element.
///
/// The `Aside` class is a specialized `DomComponent` that represents an HTML `<aside>` element.
/// It can contain a list of child components and various attributes, styles, and events.
///
/// Example usage:
/// ```dart
/// Aside(
///   [
///     Text('Hello, world!'),
///     Image(url: 'https://example.com/image.jpg'),
///   ],
///   id: 'aside1',
///   classes: 'aside',
///   styles: Styles.background(color: Colors.black),
///   attributes: {'data-type': 'sidebar'},
///   events: {'onClick': () => print('Aside clicked')},
/// )
/// ```
class Aside extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Aside(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'aside',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// A class representing an HTML `<body>` element.
///
/// The `Body` class is a specialized `DomComponent` that represents an HTML `<body>` element.
/// It can contain a list of child components and various attributes, styles, and events.
///
/// Example usage:
/// ```dart
/// Body(
///   [
///     Text('Hello, world!'),
///     Image(url: 'https://example.com/image.jpg'),
///   ],
///   id: 'body1',
///   classes: 'body',
///   styles: Styles.background(color: Colors.black),
///   attributes: {'data-type': 'main'},
///   events: {'onClick': () => print('Body clicked')},
/// )
/// ```
class Body extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Body(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'body',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// A class representing an HTML `<footer>` element.
///
/// The `Footer` class is a specialized `DomComponent` that represents an HTML `<footer>` element.
/// It can contain a list of child components and various attributes, styles, and events.
///
/// Example usage:
/// ```dart
/// Footer(
///   [
///     Text('Hello, world!'),
///     Image(url: 'https://example.com/image.jpg'),
///   ],
///   id: 'footer1',
///   classes: 'footer',
///   styles: Styles.background(color: Colors.black),
///   attributes: {'data-type': 'footer'},
///   events: {'onClick': () => print('Footer clicked')},
/// )
/// ```
class Footer extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;
  Footer(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'footer',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// A class representing an HTML `<head>` element.
///
/// The `Head` class is a specialized `DomComponent` that represents an HTML `<head>` element.
/// It can contain a list of child components and various attributes, styles, and events.
///
/// Example usage:
/// ```dart
/// Head(
///   [
///     Text('Hello, world!'),
///     Image(url: 'https://example.com/image.jpg'),
///   ],
///   id: 'head1',
///   classes: 'head',
///   styles: Styles.background(color: Colors.black),
///   attributes: {'data-type': 'header'},
///   events: {'onClick': () => print('Head clicked')},
/// )
/// ```
class Head extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Head(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'head',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<header>` HTML element represents introductory content, typically a group of introductory or navigational aids.
/// It may contain some heading elements but also a logo, a search form, an author name, and other elements.
///
/// Example usage:
/// ```dart
/// Header(
///   [
///     Text('Welcome to my website!'),
///     Image(url: 'https://example.com/logo.jpg'),
///   ],
///   id: 'header1',
///   classes: 'header',
///   styles: Styles.background(color: Colors.blue),
///   attributes: {'data-role': 'banner'},
///   events: {'onClick': () => print('Header clicked')},
/// )
/// ```
class Header extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Header(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'header',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<html>` HTML element represents the root (top-level element) of an HTML document, so it is also referred to as the root element.
/// All other elements must be descendants of this element.
///
/// Example usage:
/// ```dart
/// Html(
///   [
///     Head([Title('My Website')]),
///     Body([Text('Hello, world!')]),
///   ],
///   id: 'html1',
///   classes: 'html',
///   styles: Styles.background(color: Colors.white),
///   attributes: {'lang': 'en'},
///   events: {'onLoad': () => print('HTML loaded')},
/// )
/// ```
class Html extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Html(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'html',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<section>` HTML element represents a generic standalone section of a document, which doesn't have a more specific semantic element to represent it.
/// Sections should always have a heading, with very few exceptions.
///
/// Example usage:
/// ```dart
/// Section(
///   [
///     H1([Text('Section Title')]),
///     Text('This is a section of the document.'),
///   ],
///   id: 'section1',
///   classes: 'section',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-section': 'main'},
///   events: {'onClick': () => print('Section clicked')},
/// )
/// ```
class Section extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Section(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'section',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<h1>` to `<h6>` HTML elements represent six levels of section headings. `<h1>` is the highest section level and `<h6>` is the lowest.
///
/// Example usage:
/// ```dart
/// H1(
///   [
///     Text('Main Heading'),
///   ],
///   id: 'heading1',
///   classes: 'main-heading',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-level': '1'},
///   events: {'onClick': () => print('Heading clicked')},
/// )
/// ```
class H1 extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  H1(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'h1',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<h1>` to `<h6>` HTML elements represent six levels of section headings. `<h1>` is the highest section level and `<h6>` is the lowest.
///
/// Example usage:
/// ```dart
/// H2(
///   [
///     Text('Subheading Level 2'),
///   ],
///   id: 'heading2',
///   classes: 'subheading',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-level': '2'},
///   events: {'onClick': () => print('H2 clicked')},
/// )
/// ```
class H2 extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  H2(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'h2',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<h1>` to `<h6>` HTML elements represent six levels of section headings. `<h1>` is the highest section level and `<h6>` is the lowest.
///
/// Example usage:
/// ```dart
/// H3(
///   [
///     Text('Subheading Level 3'),
///   ],
///   id: 'heading3',
///   classes: 'subheading',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-level': '3'},
///   events: {'onClick': () => print('H3 clicked')},
/// )
/// ```
class H3 extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  H3(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'h3',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<h1>` to `<h6>` HTML elements represent six levels of section headings. `<h1>` is the highest section level and `<h6>` is the lowest.
///
/// Example usage:
/// ```dart
/// H4(
///   [
///     Text('Subheading Level 4'),
///   ],
///   id: 'heading4',
///   classes: 'subheading',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-level': '4'},
///   events: {'onClick': () => print('H4 clicked')},
/// )
/// ```
class H4 extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  H4(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'h4',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<h1>` to `<h6>` HTML elements represent six levels of section headings. `<h1>` is the highest section level and `<h6>` is the lowest.
///
/// Example usage:
/// ```dart
/// H5(
///   [
///     Text('Subheading Level 5'),
///   ],
///   id: 'heading5',
///   classes: 'subheading',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-level': '5'},
///   events: {'onClick': () => print('H5 clicked')},
/// )
/// ```
class H5 extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  H5(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'h5',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<h1>` to `<h6>` HTML elements represent six levels of section headings. `<h1>` is the highest section level and `<h6>` is the lowest.
///
/// Example usage:
/// ```dart
/// H6(
///   [
///     Text('Subheading Level 6'),
///   ],
///   id: 'heading6',
///   classes: 'subheading',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-level': '6'},
///   events: {'onClick': () => print('H6 clicked')},
/// )
/// ```
class H6 extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  H6(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'h6',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<main>` HTML element represents the primary content of a document, distinct from content that is repeated across multiple pages such as site headers, footers, and navigation bars.
///
/// Example usage:
/// ```dart
/// Main(
///   [
///     Text('This is the main content of the page.'),
///   ],
///   id: 'main1',
///   classes: 'main-content',
///   styles: Styles.background(color: Colors.white),
///   attributes: {'role': 'main'},
///   events: {'onLoad': () => print('Main content loaded')},
/// )
/// ```
class Main extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Main(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'main',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<nav>` HTML element represents a section of a page whose purpose is to provide navigation links, either within the current document or to other documents. Common examples of navigation sections are menus, tables of contents, and indexes.
///
/// Example usage:
/// ```dart
/// Nav(
///   [
///     Text('Home'),
///     Text('About'),
///     Text('Contact'),
///   ],
///   id: 'nav1',
///   classes: 'navigation',
///   styles: Styles.background(color: Colors.blue),
///   attributes: {'role': 'navigation'},
///   events: {'onClick': () => print('Nav clicked')},
/// )
/// ```
class Nav extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Nav(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'nav',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<blockquote>` HTML element indicates that the enclosed text is an extended quotation. Usually, this is rendered visually by indentation. A URL for the source of the quotation may be given using the cite attribute, while a text representation of the source can be given using the `<cite>` element.
///
/// - [cite]: A URL that designates a source document or message for the information quoted. This attribute is intended to point to information explaining the context or the reference for the quote.
///
/// Example usage:
/// ```dart
/// Blockquote(
///   [
///     Text('This is a quote.'),
///   ],
///   cite: 'https://example.com/source',
///   id: 'blockquote1',
///   classes: 'quote',
///   styles: Styles.text(fontSize: 16.rem),
///   attributes: {'data-type': 'quote'},
///   events: {'onClick': () => print('Blockquote clicked')},
/// )
/// ```
class Blockquote extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;
  final String? cite;

  Blockquote(
    this.children, {
    this.cite,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'blockquote',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...attributes ?? {},
            if (cite != null) 'cite': cite,
          },
          events: events,
        );
}

/// The `<div>` HTML element is the generic container for flow content. It has no effect on the content or layout until styled in some way using CSS (e.g. styling is directly applied to it, or some kind of layout model like Flexbox is applied to its parent element).
///
/// Example usage:
/// ```dart
/// Div(
///   [
///     Text('This is a div.'),
///   ],
///   id: 'div1',
///   classes: 'container',
///   styles: Styles.box(padding: EdgeInsets.all(10.rem)),
///   attributes: {'data-role': 'container'},
///   events: {'onClick': () => print('Div clicked')},
/// )
/// ```
class Div extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Div(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'div',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<ul>` HTML element represents an unordered list of items, typically rendered as a bulleted list.
///
/// Example usage:
/// ```dart
/// Ul(
///   [
///     Li([Text('Item 1')]),
///     Li([Text('Item 2')]),
///     Li([Text('Item 3')]),
///   ],
///   id: 'ul1',
///   classes: 'unordered-list',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-role': 'list'},
///   events: {'onClick': () => print('Ul clicked')},
/// )
/// ```
class Ul extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Ul(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'ul',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<ol>` HTML element represents an ordered list of items — typically rendered as a numbered list.
///
/// - [reversed]: This Boolean attribute specifies that the list's items are in reverse order. Items will be numbered from high to low.
/// - [start]: An integer to start counting from for the list items. Always an Arabic numeral (1, 2, 3, etc.), even when the numbering type is letters or Roman numerals. For example, to start numbering elements from the letter "d" or the Roman numeral "iv," use start="4".
/// - [type]: Sets the numbering type. The specified type is used for the entire list unless a different type attribute is used on an enclosed `<li>` element.
///
/// Example usage:
/// ```dart
/// Ol(
///   [
///     Li([Text('First item')]),
///     Li([Text('Second item')]),
///     Li([Text('Third item')]),
///   ],
///   reversed: false,
///   start: 1,
///   type: NumberingType.decimal,
///   id: 'ol1',
///   classes: 'ordered-list',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-role': 'list'},
///   events: {'onClick': () => print('Ol clicked')},
/// )
/// ```
class Ol extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;
  final bool? reversed;
  final int? start;
  final NumberingType? type;

  Ol(
    this.children, {
    this.reversed,
    this.start,
    this.type,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'ol',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...attributes ?? {},
            if (reversed == true) 'reversed': '',
            if (start != null) 'start': '$start',
            if (type != null) 'type': type.value,
          },
          events: events,
        );
}

/// The `<li>` HTML element is used to represent an item in a list. It must be contained in a parent element: an ordered list (`<ol>`), an unordered list (`<ul>`), or a menu (`<menu>`). In menus and unordered lists, list items are usually displayed using bullet points. In ordered lists, they are usually displayed with an ascending counter on the left, such as a number or letter.
///
/// - [value]: This integer attribute indicates the current ordinal value of the list item as defined by the `<ol>` element. The only allowed value for this attribute is a number, even if the list is displayed with Roman numerals or letters. List items that follow this one continue numbering from the value set. The value attribute has no meaning for unordered lists (`<ul>`) or for menus (`<menu>`).
///
/// Example usage:
/// ```dart
/// Li(
///   [
///     Text('List item'),
///   ],
///   value: 1,
///   id: 'li1',
///   classes: 'list-item',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-role': 'item'},
///   events: {'onClick': () => print('Li clicked')},
/// )
/// ```
class Li extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;
  final int? value;

  Li(
    this.children, {
    this.value,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'li',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...attributes ?? {},
            if (value != null) 'value': '$value',
          },
          events: events,
        );
}

/// The `<hr>` HTML element represents a thematic break between paragraph-level elements: for example, a change of scene in a story, or a shift of topic within a section.
///
/// Example usage:
/// ```dart
/// Hr(
///   id: 'hr1',
///   classes: 'thematic-break',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-role': 'separator'},
///   events: {'onClick': () => print('Hr clicked')},
/// )
/// ```
class Hr extends DomComponent {
  final List<Component> children = [];
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Hr({
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'hr',
          children: [],
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<p>` HTML element represents a paragraph. Paragraphs are usually represented in visual media as blocks of text separated from adjacent blocks by blank lines and/or first-line indentation, but HTML paragraphs can be any structural grouping of related content, such as images or form fields.
///
/// Example usage:
/// ```dart
/// P(
///   [
///     Text('This is a paragraph.'),
///   ],
///   id: 'p1',
///   classes: 'paragraph',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-role': 'text'},
///   events: {'onClick': () => print('P clicked')},
/// )
/// ```
class P extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  P(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'p',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// The `<pre>` HTML element represents preformatted text which is to be presented exactly as written in the HTML file. The text is typically rendered using a non-proportional, or monospaced, font. Whitespace inside this element is displayed as written.
///
/// Example usage:
/// ```dart
/// Pre(
///   [
///     Text('Preformatted text'),
///   ],
///   id: 'pre1',
///   classes: 'preformatted',
///   styles: Styles.background(color: Colors.grey),
///   attributes: {'data-role': 'code'},
///   events: {'onClick': () => print('Pre clicked')},
/// )
/// ```
class Pre extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Pre(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'pre',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}


