import 'package:jaspr/jaspr.dart';
import 'package:universal_io/io.dart';

Component svgAsset(
  String path, {
  Unit? width,
  Unit? height,
  String? viewBox,
  Color? fill,
  Color? stroke,
  Unit? strokeWidth,
  Color? color,
  String? strokeLineCap,
  String? strokeLineJoin,
  String? className,
  bool isPath = true,
}) {
  var svgFile = isPath ? File(path).readAsStringSync() : path;

// Replace values in svgFile if variables are not null
  if (width != null) {
    svgFile = svgFile.replaceFirstMapped(
      RegExp(r'(<svg[^>]*?)\swidth="[^"]*"'),
      (match) => '${match.group(1)} width="${width.value}"',
    );
  }

  if (height != null) {
    svgFile = svgFile.replaceFirstMapped(
      RegExp(r'(<svg[^>]*?)\sheight="[^"]*"'),
      (match) => '${match.group(1)} height="${height.value}"',
    );
  }

  if (viewBox != null) {
    svgFile = svgFile.replaceFirstMapped(
      RegExp(r'(<svg[^>]*?)\sviewBox="[^"]*"'),
      (match) => '${match.group(1)} viewBox="$viewBox"',
    );
  }

  if (fill != null) {
    svgFile = svgFile.replaceFirstMapped(
      RegExp(r'(<[^>]*?)\sfill="[^"]*"'),
      (match) => '${match.group(1)} fill="${fill.value}"',
    );
  }

  if (stroke != null) {
    svgFile = svgFile.replaceFirstMapped(
      RegExp(r'(<[^>]*?)\sstroke="[^"]*"'),
      (match) => '${match.group(1)} stroke="${stroke.value}"',
    );
  }

  if (strokeWidth != null) {
    svgFile = svgFile.replaceFirstMapped(
      RegExp(r'(<[^>]*?)\sstroke-width="[^"]*"'),
      (match) => '${match.group(1)} stroke-width="${strokeWidth.value}"',
    );
  }

  if (color != null) {
    svgFile = svgFile.replaceFirstMapped(
      RegExp(r'(<[^>]*?)\scolor="[^"]*"'),
      (match) => '${match.group(1)} color="${color.value}"',
    );
  }

  if (strokeLineCap != null) {
    svgFile = svgFile.replaceFirstMapped(
      RegExp(r'(<[^>]*?)\sstroke-linecap="[^"]*"'),
      (match) => '${match.group(1)} stroke-linecap="$strokeLineCap"',
    );
  }

  if (strokeLineJoin != null) {
    svgFile = svgFile.replaceFirstMapped(
      RegExp(r'(<[^>]*?)\sstroke-linejoin="[^"]*"'),
      (match) => '${match.group(1)} stroke-linejoin="$strokeLineJoin"',
    );
  }

// if className is defined, add it to existing class attribute
  if (className != null && svgFile.contains('class="')) {
    svgFile = svgFile.replaceFirstMapped(
      RegExp('class="([^"]*)"'),
      (match) => 'class="${match.group(1)} $className"',
    );
  }

  return raw(svgFile);
}

Component svgDataUri(
  String uri, {
  String? alt,
  CrossOrigin? crossOrigin,
  int? width,
  int? height,
  MediaLoading? loading,
  ReferrerPolicy? referrerPolicy,
  Key? key,
  String? id,
  String? classes,
  Styles? styles,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
}) {
  return img(
    src: uri,
    width: width,
    crossOrigin: crossOrigin,
    alt: alt,
    height: height,
    loading: loading,
    referrerPolicy: referrerPolicy,
    key: key,
    id: id,
    classes: classes,
    styles: styles,
    attributes: attributes,
    events: events,
  );
}

Component svgRaw(
  String svgString, {
  Unit? width,
  Unit? height,
  String? viewBox,
  Color? fill,
  Color? stroke,
  Unit? strokeWidth,
  Color? color,
  String? strokeLineCap,
  String? strokeLineJoin,
  String? className,
}) {
  return svgAsset(
    svgString,
    width: width,
    height: height,
    viewBox: viewBox,
    fill: fill,
    stroke: stroke,
    strokeLineCap: strokeLineCap,
    strokeLineJoin: strokeLineJoin,
    className: className,
    isPath: false,
  );
}
