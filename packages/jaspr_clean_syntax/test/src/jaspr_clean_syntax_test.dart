// jaspr_clean_syntax_test.dart

import 'package:jaspr_clean_syntax/src/jaspr_clean_syntax.dart';
import 'package:test/test.dart';

void main() {
  group('Class Instantiation Tests', () {
    test('Article can be instantiated', () {
      var instance = Article([]);
      expect(instance, isA<Article>());
    });
  });
}
