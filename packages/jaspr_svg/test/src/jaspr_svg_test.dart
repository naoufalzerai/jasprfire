// ignore_for_file: prefer_const_constructors
import 'package:jaspr_svg/jaspr_svg.dart';
import 'package:test/test.dart';

void main() {
  group('JasprSvg', () {
    test('can be instantiated', () {
      expect(svgRaw('web'), isNotNull);
    });
  });
}
