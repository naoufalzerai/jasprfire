import 'package:jaspr/jaspr.dart';

part 'content.dart';
part 'form.dart';
// part 'medias.dart';
part 'others.dart';
part 'svg.dart';


// Media components.

/// The &lt;audio&gt; HTML element is used to embed sound content in documents. It may contain one or more audio sources, represented using the src attribute or the &lt;source&gt; element: the browser will choose the most suitable one. It can also be the destination for streamed media, using a MediaStream.
///
/// - [autoplay]: A Boolean attribute: if specified, the audio will automatically begin playback as soon as it can do so, without waiting for the entire audio file to finish downloading.
/// - [controls]: If this attribute is present, the browser will offer controls to allow the user to control audio playback, including volume, seeking, and pause/resume playback.
/// - [crossOrigin]: Indicates whether to use CORS to fetch the related audio file.
/// - [loop]: If specified, the audio player will automatically seek back to the start upon reaching the end of the audio.
/// - [muted]: Indicates whether the audio will be initially silenced. Its default value is false.
/// - [preload]: Provides a hint to the browser about what the author thinks will lead to the best user experience.
/// - [src]: The URL of the audio to embed. This is subject to HTTP access controls. This is optional; you may instead use the &lt;source&gt; element within the audio block to specify the audio to embed.

/// A class representing an HTML `<audio>` element.
///
/// The `Audio` class is a specialized `DomComponent` that represents an HTML `<audio>` element.
/// 
/// - [autoplay]: If true, the audio will automatically start playing as soon as it can do so without stopping.
/// - [controls]: If true, the browser will offer controls to allow the user to control audio playback.
/// - [crossOrigin]: Indicates whether the browser should send credentials (cookies, authorization headers, etc.) for cross-origin requests.
/// - [loop]: If true, the audio will start over again, every time it is finished.
/// - [muted]: If true, the audio output will be muted.
/// - [preload]: Provides a hint to the browser about what the author thinks will lead to the best user experience.
/// - [src]: The URL of the audio to embed.
/// 
/// Example usage:
/// ```dart
/// Audio(
///   [
///     Text('Your browser does not support the audio element.'),
///   ],
///   src: 'https://example.com/audio.mp3',
///   autoplay: true,
///   controls: true,
///   loop: true,
///   muted: false,
///   preload: Preload.auto,
///   id: 'audio1',
///   classes: 'audio-class',
///   styles: Styles.color(Colors.blue),
///   attributes: {'data-type': 'audio'},
///   events: {'onPlay': () => print('Audio playing')},
/// )
/// ```
class Audio extends DomComponent {
  final List<Component> children;
  final bool? autoplay;
  final bool? controls;
  final CrossOrigin? crossOrigin;
  final bool? loop;
  final bool? muted;
  final Preload? preload;
  final String? src;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Audio(
    this.children, {
    this.autoplay,
    this.controls,
    this.crossOrigin,
    this.loop,
    this.muted,
    this.preload,
    this.src,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'audio',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (autoplay == true) 'autoplay': '',
            if (controls == true) 'controls': '',
            if (crossOrigin != null) 'crossorigin': crossOrigin.value,
            if (loop == true) 'loop': '',
            if (muted == true) 'muted': '',
            if (preload != null) 'preload': preload.value,
            if (src != null) 'src': src,
          },
          events: events,
        );
}

/// A class representing an HTML `<img>` element.
///
/// The `Img` class is a specialized `DomComponent` that represents an HTML `<img>` element.
/// 
/// - [alt]: Defines an alternative text description of the image.
/// - [crossOrigin]: Indicates if the fetching of the image must be done using a CORS request.
/// - [width]: The intrinsic width of the image in pixels.
/// - [height]: The intrinsic height of the image, in pixels.
/// - [loading]: Indicates how the browser should load the image.
/// - [src]: The image URL.
/// - [referrerPolicy]: Indicates which referrer to send when fetching the resource.
/// 
/// Example usage:
/// ```dart
/// Img(
///   src: 'https://example.com/image.jpg',
///   alt: 'Example image',
///   width: 600,
///   height: 400,
///   loading: MediaLoading.lazy,
///   crossOrigin: CrossOrigin.anonymous,
///   referrerPolicy: ReferrerPolicy.noReferrer,
///   id: 'image1',
///   classes: 'image-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'image'},
///   events: {'onLoad': () => print('Image loaded')},
/// )
/// ```
class Img extends DomComponent {
  final String? alt;
  final CrossOrigin? crossOrigin;
  final int? width;
  final int? height;
  final MediaLoading? loading;
  final String src;
  final ReferrerPolicy? referrerPolicy;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Img({
    this.alt,
    this.crossOrigin,
    this.width,
    this.height,
    this.loading,
    required this.src,
    this.referrerPolicy,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'img',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (alt != null) 'alt': alt,
            if (crossOrigin != null) 'crossorigin': crossOrigin.value,
            if (width != null) 'width': '$width',
            if (height != null) 'height': '$height',
            if (loading != null) 'loading': loading.value,
            'src': src,
            if (referrerPolicy != null) 'referrerpolicy': referrerPolicy.value,
          },
          events: events,
        );
}

/// A class representing an HTML `<video>` element.
///
/// The `Video` class is a specialized `DomComponent` that represents an HTML `<video>` element.
/// 
/// - [autoplay]: If true, the video will automatically start playing as soon as it can do so without stopping.
/// - [controls]: If true, the browser will offer controls to allow the user to control video playback.
/// - [crossOrigin]: Indicates whether the browser should send credentials (cookies, authorization headers, etc.) for cross-origin requests.
/// - [loop]: If true, the video will start over again, every time it is finished.
/// - [muted]: If true, the video output will be muted.
/// - [preload]: Provides a hint to the browser about what the author thinks will lead to the best user experience.
/// - [src]: The URL of the video to embed.
/// - [poster]: A URL for an image to be shown while the video is downloading or until the user hits the play button.
/// 
/// Example usage:
/// ```dart
/// Video(
///   [
///     Text('Your browser does not support the video element.'),
///   ],
///   src: 'https://example.com/video.mp4',
///   poster: 'https://example.com/poster.jpg',
///   autoplay: true,
///   controls: true,
///   loop: true,
///   muted: false,
///   preload: Preload.auto,
///   id: 'video1',
///   classes: 'video-class',
///   styles: Styles.color(Colors.blue),
///   attributes: {'data-type': 'video'},
///   events: {'onPlay': () => print('Video playing')},
/// )
/// ```
class Video extends DomComponent {
  final List<Component> children;
  final bool? autoplay;
  final bool? controls;
  final CrossOrigin? crossOrigin;
  final bool? loop;
  final bool? muted;
  final Preload? preload;
  final String? src;
  final String? poster;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Video(
    this.children, {
    this.autoplay,
    this.controls,
    this.crossOrigin,
    this.loop,
    this.muted,
    this.preload,
    this.src,
    this.poster,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'video',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (autoplay == true) 'autoplay': '',
            if (controls == true) 'controls': '',
            if (crossOrigin != null) 'crossorigin': crossOrigin.value,
            if (loop == true) 'loop': '',
            if (muted == true) 'muted': '',
            if (preload != null) 'preload': preload.value,
            if (src != null) 'src': src,
            if (poster != null) 'poster': poster,
          },
          events: events,
        );
}
/// A class representing an HTML `<embed>` element.
///
/// The `Embed` class is a specialized `DomComponent` that represents an HTML `<embed>` element.
/// 
/// - [src]: The URL of the resource being embedded.
/// - [type]: The MIME type to use to select the plug-in to instantiate.
/// - [width]: The displayed width of the resource, in CSS pixels.
/// - [height]: The displayed height of the resource, in CSS pixels.
/// 
/// Example usage:
/// ```dart
/// Embed(
///   src: 'https://example.com/resource',
///   type: 'application/pdf',
///   width: 600,
///   height: 400,
///   id: 'embed1',
///   classes: 'embed-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'embed'},
///   events: {'onLoad': () => print('Embed loaded')},
/// )
/// ```
class Embed extends DomComponent {
  final String src;
  final String? type;
  final int? width;
  final int? height;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Embed({
    required this.src,
    this.type,
    this.width,
    this.height,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'embed',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            'src': src,
            if (type != null) 'type': type,
            if (width != null) 'width': '$width',
            if (height != null) 'height': '$height',
          },
          events: events,
        );
}
/// A class representing an HTML `<iframe>` element.
///
/// The `Iframe` class is a specialized `DomComponent` that represents an HTML `<iframe>` element.
/// 
/// - [src]: The URL of the page to embed. Use a value of about:blank to embed an empty page that conforms to the same-origin policy. Also note that programmatically removing an &lt;iframe&gt;'s src attribute (e.g. via Element.removeAttribute()) causes about:blank to be loaded in the frame in Firefox (from version 65), Chromium-based browsers, and Safari/iOS.
/// - [allow]: Specifies a feature policy for the &lt;iframe&gt;. The policy defines what features are available to the &lt;iframe&gt; based on the origin of the request (e.g. access to the microphone, camera, battery, web-share API, etc.).
/// - [csp]: A Content Security Policy enforced for the embedded resource.
/// - [loading]: Indicates how the browser should load the iframe.
/// - [name]: A targetable name for the embedded browsing context. This can be used in the target attribute of the &lt;a&gt;, &lt;form&gt;, or &lt;base&gt; elements; the formtarget attribute of the &lt;input&gt; or &lt;button&gt; elements; or the windowName parameter in the window.open() method.
/// - [sandbox]: Applies extra restrictions to the content in the frame. The value of the attribute can either be empty to apply all restrictions, or space-separated tokens to lift particular restrictions.
/// - [referrerPolicy]: Indicates which referrer to send when fetching the frame's resource.
/// - [width]: The width of the frame in CSS pixels. Default is 300.
/// - [height]: The height of the frame in CSS pixels. Default is 150.
/// 
/// Example usage:
/// ```dart
/// Iframe(
///   [
///     Text('Your browser does not support the iframe element.'),
///   ],
///   src: 'https://example.com',
///   allow: 'fullscreen',
///   csp: 'default-src \'self\'',
///   loading: MediaLoading.lazy,
///   name: 'iframe1',
///   sandbox: 'allow-scripts',
///   referrerPolicy: ReferrerPolicy.noReferrer,
///   width: 600,
///   height: 400,
///   id: 'iframe1',
///   classes: 'iframe-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'iframe'},
///   events: {'onLoad': () => print('Iframe loaded')},
/// )
/// ```
class Iframe extends DomComponent {
  final List<Component> children;
  final String src;
  final String? allow;
  final String? csp;
  final MediaLoading? loading;
  final String? name;
  final String? sandbox;
  final ReferrerPolicy? referrerPolicy;
  final int? width;
  final int? height;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Iframe(
    this.children, {
    required this.src,
    this.allow,
    this.csp,
    this.loading,
    this.name,
    this.sandbox,
    this.referrerPolicy,
    this.width,
    this.height,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'iframe',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            'src': src,
            if (allow != null) 'allow': allow,
            if (csp != null) 'csp': csp,
            if (loading != null) 'loading': loading.value,
            if (name != null) 'name': name,
            if (sandbox != null) 'sandbox': sandbox,
            if (referrerPolicy != null) 'referrerpolicy': referrerPolicy.value,
            if (width != null) 'width': '$width',
            if (height != null) 'height': '$height',
          },
          events: events,
          children: children,
        );
}
/// A class representing an HTML `<object>` element.
///
/// The `ObjectElt` class is a specialized `DomComponent` that represents an HTML `<object>` element.
/// 
/// - [data]: The address of the resource as a valid URL. At least one of data and type must be defined.
/// - [name]: The name of valid browsing context (HTML5).
/// - [type]: The content type of the resource specified by data. At least one of data and type must be defined.
/// - [width]: The width of the displayed resource in CSS pixels.
/// - [height]: The height of the displayed resource in CSS pixels.
/// 
/// Example usage:
/// ```dart
/// ObjectElt(
///   [
///     Text('Your browser does not support the object element.'),
///   ],
///   data: 'https://example.com/resource',
///   type: 'application/pdf',
///   width: 600,
///   height: 400,
///   id: 'object1',
///   classes: 'object-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'object'},
///   events: {'onLoad': () => print('Object loaded')},
/// )
/// ```
class ObjectElt extends DomComponent {
  final List<Component> children;
  final String? data;
  final String? name;
  final String? type;
  final int? width;
  final int? height;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  ObjectElt(
    this.children, {
    this.data,
    this.name,
    this.type,
    this.width,
    this.height,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'object',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (data != null) 'data': data,
            if (name != null) 'name': name,
            if (type != null) 'type': type,
            if (width != null) 'width': '$width',
            if (height != null) 'height': '$height',
          },
          events: events,
          children: children,
        );
}

/// A class representing an HTML `<source>` element.
///
/// The `Source` class is a specialized `DomComponent` that represents an HTML `<source>` element.
/// 
/// - [type]: The MIME media type of the resource, optionally with a codecs parameter.
/// - [src]: Address of the media resource.
/// 
/// Example usage:
/// ```dart
/// Source(
///   type: 'video/mp4',
///   src: 'https://example.com/video.mp4',
///   id: 'source1',
///   classes: 'source-class',
///   styles: Styles.background(Colors.white),
///   attributes: {'data-type': 'source'},
///   events: {'onLoad': () => print('Source loaded')},
/// )
/// ```
class Source extends DomComponent {
  final String? type;
  final String? src;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Source({
    this.type,
    this.src,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'source',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (type != null) 'type': type,
            if (src != null) 'src': src,
          },
          events: events,
        );
}

/// Text components.

/// A class representing an HTML `<a>` element.
///
/// The `A` class is a specialized `DomComponent` that represents an HTML `<a>` element.
/// Content within each &lt;a&gt; should indicate the link's destination. If the href attribute is present, pressing the enter key while focused on the &lt;a&gt; element will activate it.
///
/// - [download]: Causes the browser to treat the linked URL as a download. Can be used with or without a value:
///
///   Without a value, the browser will suggest a filename/extension, generated from various sources:
///   The Content-Disposition HTTP header
///   The final segment in the URL path
///   The media type (from the Content-Type header, the start of a data: URL, or Blob.type for a blob: URL)
///   Defining a value suggests it as the filename. / and \ characters are converted to underscores (_). Filesystems may forbid other characters in filenames, so browsers will adjust the suggested name if necessary.
/// - [href]: The URL that the hyperlink points to. Links are not restricted to HTTP-based URLs — they can use any URL scheme supported by browsers:
///
///   Sections of a page with fragment URLs
///   Pieces of media files with media fragments
///   Telephone numbers with tel: URLs
///   Email addresses with mailto: URLs
///   While web browsers may not support other URL schemes, web sites can with registerProtocolHandler()
/// - [target]: Where to display the linked URL, as the name for a browsing context (a tab, window, or &lt;iframe&gt;).
/// - [type]: Hints at the linked URL's format with a MIME type. No built-in functionality.
/// - [referrerPolicy]: How much of the referrer to send when following the link.
/// Example usage:
/// ```dart
/// A(
///   [
///     Text('Click here'),
///   ],
///   href: 'https://example.com',
///   download: 'example.txt',
///   target: Target.blank,
///   type: 'text/plain',
///   referrerPolicy: ReferrerPolicy.noReferrer,
///   id: 'link1',
///   classes: 'link',
///   styles: Styles.color(Colors.blue),
///   attributes: {'data-type': 'link'},
///   events: {'onClick': () => print('Link clicked')},
/// )
/// ```
class A extends DomComponent {
  final List<Component> children;
  final String? download;
  final String href;
  final Target? target;
  final String? type;
  final ReferrerPolicy? referrerPolicy;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  A(
    this.children, {
    this.download,
    required this.href,
    this.target,
    this.type,
    this.referrerPolicy,
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'a',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: {
            ...?attributes,
            if (download != null) 'download': download,
            'href': href,
            if (target != null) 'target': target.value,
            if (type != null) 'type': type,
            if (referrerPolicy != null) 'referrerpolicy': referrerPolicy.value,
          },
          events: events,
        );
}

/// A class representing an HTML `<b>` element.
///
/// The `B` class is a specialized `DomComponent` that represents an HTML `<b>` element.
/// It can contain a list of child components and various attributes, styles, and events.
///
/// Example usage:
/// ```dart
/// B(
///   [
///     Text('Important text'),
///   ],
///   id: 'bold1',
///   classes: 'bold',
///   styles: Styles.fontWeight(FontWeight.bold),
///   attributes: {'data-type': 'bold'},
///   events: {'onClick': () => print('Bold text clicked')},
/// )
/// ```
class B extends DomComponent {
  final List<Component> children;
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  B(
    this.children, {
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'b',
          children: children,
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// A class representing an HTML `<br>` element.
///
/// The `Br` class is a specialized `DomComponent` that represents an HTML `<br>` element.
/// It can contain various attributes, styles, and events.
///
/// Example usage:
/// ```dart
/// LineBreak(
///   id: 'linebreak1',
///   classes: 'linebreak',
///   styles: Styles.marginTop(10),
///   attributes: {'data-type': 'linebreak'},
///   events: {'onClick': () => print('Line break clicked')},
/// )
/// ```
class Br extends DomComponent {
  final Key? key;
  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;

  Br({
    this.key,
    this.id,
    this.classes,
    this.styles,
    this.attributes,
    this.events,
  }) : super(
          tag: 'br',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
        );
}

/// A class representing an HTML `<code>` element.
class Code extends DomComponent {
  Code(
    List<Component> children, {
    Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events,
  }) : super(
          tag: 'code',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
          children: children,
        );
}

/// A class representing an HTML `<em>` element.
class Em extends DomComponent {
  Em(
    List<Component> children, {
    Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events,
  }) : super(
          tag: 'em',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
          children: children,
        );
}

/// A class representing an HTML `<i>` element.
class I extends DomComponent {
  I(
    List<Component> children, {
    Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events,
  }) : super(
          tag: 'i',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
          children: children,
        );
}

/// A class representing an HTML `<s>` element.
class S extends DomComponent {
  S(
    List<Component> children, {
    Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events,
  }) : super(
          tag: 's',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
          children: children,
        );
}

/// A class representing an HTML `<small>` element.
class Small extends DomComponent {
  Small(
    List<Component> children, {
    Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events,
  }) : super(
          tag: 'small',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
          children: children,
        );
}

/// A class representing an HTML `<span>` element.
class Span extends DomComponent {
  Span(
    List<Component> children, {
    Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events,
  }) : super(
          tag: 'span',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
          children: children,
        );
}

/// A class representing an HTML `<strong>` element.
class Strong extends DomComponent {
  Strong(
    List<Component> children, {
    Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events,
  }) : super(
          tag: 'strong',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
          children: children,
        );
}

/// A class representing an HTML `<u>` element.
class U extends DomComponent {
  U(
    List<Component> children, {
    Key? key,
    String? id,
    String? classes,
    Styles? styles,
    Map<String, String>? attributes,
    Map<String, EventCallback>? events,
  }) : super(
          tag: 'u',
          key: key,
          id: id,
          classes: classes,
          styles: styles,
          attributes: attributes,
          events: events,
          children: children,
        );
}

extension SimplifiedStyle on DomComponent {
  Component props({
    /// The overall styles to be applied.
    Styles? styles,

    /// The padding inside the component.
    EdgeInsets? padding,

    /// The background color of the component.
    Color? bgColor,

    /// The text color of the component.
    Color? textColor,

    /// The background attachment property.
    BackgroundAttachment? bgAttachment,

    /// The background clip property.
    BackgroundClip? bgClip,

    /// The background image style.
    ImageStyle? bgImage,

    /// The background origin property.
    BackgroundOrigin? bgOrigin,

    /// The background position property.
    BackgroundPosition? bgPosition,

    /// The background repeat property.
    BackgroundRepeat? bgRepeat,

    /// The background size property.
    BackgroundSize? bgSize,

    /// The margin outside the component.
    EdgeInsets? margin,

    /// The display property of the component.
    Display? display,

    /// The box-sizing property.
    BoxSizing? boxSizing,

    /// The width of the component.
    Unit? width,

    /// The height of the component.
    Unit? height,

    /// The minimum width of the component.
    Unit? minWidth,

    /// The maximum width of the component.
    Unit? maxWidth,

    /// The minimum height of the component.
    Unit? minHeight,

    /// The maximum height of the component.
    Unit? maxHeight,

    /// The border of the component.
    Border? border,

    /// The border radius of the component.
    BorderRadius? radius,

    /// The outline of the component.
    Outline? outline,

    /// The overflow property of the component.
    Overflow? overflow,

    /// The visibility property of the component.
    Visibility? visibility,

    /// The position property of the component.
    Position? position,

    /// The opacity of the component.
    double? opacity,

    /// The transform property of the component.
    Transform? transform,

    /// The box shadow of the component.
    BoxShadow? shadow,

    /// The cursor property of the component.
    Cursor? cursor,

    /// The transition property of the component.
    Transition? transition,

    /// The flex direction property.
    FlexDirection? direction,

    /// The flex wrap property.
    FlexWrap? flexWrap,

    /// The justify content property.
    JustifyContent? justifyContent,

    /// The align items property.
    AlignItems? alignItems,

    /// The flex property.
    Flex? flex,

    /// The flex order property.
    int? flexOrder,

    /// The align self property.
    AlignSelf? alignSelf,

    /// The grid template property.
    GridTemplate? gridTemplate,

    /// The grid gap property.
    GridGap? gap,

    /// The auto rows property for grid layout.
    List<TrackSize>? autoRows,

    /// The auto columns property for grid layout.
    List<TrackSize>? autoColumns,

    /// The grid placement property.
    GridPlacement? gridPlacement,

    /// The list style property.
    ListStyle? listStyle,

    /// The list image style property.
    ImageStyle? listImageStyle,

    /// The list style position property.
    ListStylePosition? listStylePosition,

    /// The raw CSS properties.
    Map<String, String>? rawCss,

    /// The text align property.
    TextAlign? textAlign,

    /// The font family property.
    FontFamily? fontFamily,

    /// The font style property.
    FontStyle? fontStyle,

    /// The font size property.
    Unit? fontSize,

    /// The font weight property.
    FontWeight? fontWeight,

    /// The text decoration property.
    TextDecoration? textDecoration,

    /// The text transform property.
    TextTransform? textTransform,

    /// The text indent property.
    Unit? textIndent,

    /// The letter spacing property.
    Unit? letterSpacing,

    /// The word spacing property.
    Unit? wordSpacing,

    /// The text line height property.
    Unit? textLineHeight,

    /// The text shadow property.
    TextShadow? textShadow,

    /// The text overflow property.
    TextOverflow? textOverflow,

    /// The white space property.
    WhiteSpace? textWhiteSpace,
  }) {
    return _copyWith(
      styles: Styles.combine(
        [
          styles ?? Styles(),
          Styles.box(
            padding: padding,
            margin: margin,
            display: display,
            width: width,
            height: height,
            minWidth: minWidth,
            maxWidth: maxWidth,
            minHeight: minHeight,
            maxHeight: maxHeight,
            border: border,
            radius: radius,
            outline: outline,
            overflow: overflow,
            visibility: visibility,
            position: position,
            opacity: opacity,
            transform: transform,
            shadow: shadow,
            cursor: cursor,
            transition: transition,
          ),
          Styles.background(
            color: bgColor,
            attachment: bgAttachment,
            clip: bgClip,
            image: bgImage,
            origin: bgOrigin,
            position: bgPosition,
            repeat: bgRepeat,
            size: bgSize,
          ),
          Styles.flexItem(
            flex: flex,
            order: flexOrder,
            alignSelf: alignSelf,
          ),
          Styles.flexbox(
            direction: direction,
            wrap: flexWrap,
            justifyContent: justifyContent,
            alignItems: alignItems,
          ),
          Styles.grid(
            template: gridTemplate,
            gap: gap,
            autoRows: autoRows,
            autoColumns: autoColumns,
          ),
          Styles.list(
            style: listStyle,
            image: listImageStyle,
            position: listStylePosition,
          ),
          Styles.text(
            color: textColor,
            align: textAlign,
            fontFamily: fontFamily,
            fontStyle: fontStyle,
            fontSize: fontSize,
            fontWeight: fontWeight,
            decoration: textDecoration,
            transform: textTransform,
            indent: textIndent,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,
            lineHeight: textLineHeight,
            shadow: textShadow,
            overflow: textOverflow,
            whiteSpace: textWhiteSpace,
          ),
          Styles.raw(rawCss ?? {}),
          Styles.gridItem(
            placement: gridPlacement,
          ),
        ],
      ),
    );
  }
}

extension ComponentCopyWith on Component {
  Component _copyWith({
    Styles? styles,
  }) {
    if (this is DomComponent) {
      final domComponent = this as DomComponent;
      return DomComponent(
        key: domComponent.key,
        tag: domComponent.tag,
        id: domComponent.id,
        classes: domComponent.classes,
        styles: Styles.combine(
            [domComponent.styles ?? Styles(), styles ?? Styles()]),
        attributes: domComponent.attributes,
        events: domComponent.events,
        child: domComponent.child,
        children: domComponent.children,
      );
    }
    // Handle other types of components if necessary
    return this;
  }
}
