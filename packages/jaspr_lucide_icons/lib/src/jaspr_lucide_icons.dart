import 'package:jaspr/jaspr.dart';

enum Mode {
  development,
  production,
}

Component importLucideIcons({Mode mode = Mode.development}) {
  final scriptSrc = mode == Mode.production
      ? 'https://unpkg.com/lucide@latest'
      : 'https://unpkg.com/lucide@latest/dist/umd/lucide.js';

  final createIconsScript = mode == Mode.production
      ? 'lucide.createIcons();'
      : "const observer=new MutationObserver((mutations)=>{mutations.forEach((mutation)=>{mutation.addedNodes.forEach((node)=>{if(node.nodeType===1&&node.tagName.toLowerCase()==='i'&&node.hasAttribute('data-lucide')){lucide.createIcons();}});});});observer.observe(document.body,{childList:true,subtree:true});";
  return raw(
      '<script src="$scriptSrc"></script><script>$createIconsScript</script>');
}

Component lucideIcon(
  String icon, {
  Key? key,
  Unit? width,
  Unit? height,
  Unit? size,
  Color? color,
  String? className,
  String? style,
  Unit? strokeWidth,
  String? id,
  Map<String, String>? attributes,
}) {

  final attrs = <String, String>{
    'data-lucide': icon,
    'width': width?.value ?? '24px',
    'height': height?.value ?? '24px',
    'size': size?.value ?? '24px',
    if (key != null) 'key': key.toString(),
    if (color != null) 'color': color.value,
    if (id != null) 'id': id,
    if (className != null) 'class': className,
    if (style != null) 'style': style,
    if (strokeWidth != null) 'stroke-width': strokeWidth.value,
  };

  if (attributes != null) {
    attrs.addAll(attributes.map(MapEntry.new));
  }
  final attrString =
      attrs.entries.map((e) => '${e.key}="${e.value}"').join(' ');
  return raw('<i $attrString></i>');
}
