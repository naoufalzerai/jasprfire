import 'package:jaspr/jaspr.dart';
import 'package:jaspr_clean_syntax/jaspr_clean_syntax.dart';

// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.
@client
class About extends StatelessComponent {
  const About({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Section([
      Ol([
        Li([
          H3([Text('📖 Documentation')]),
          Text('Jaspr\'s '),
          a(
              href: 'https://docs.page/schultek/jaspr',
              [Text('official documentation')]),
          Text(' provides you with all information you need to get started.'),
        ]),
        Li([
          H3([Text('💬 Community')]),
          Text('Got stuck? Ask your question on the official '),
          a(href: 'https://docs.page/schultek/jaspr', [Text('Discord server')]),
          Text(' for the Jaspr community.'),
        ]),
        Li([
          H3([Text('📦 Ecosystem')]),
          Text(
              'Get official packages and integrations for your project like jaspr_router, jaspr_tailwind or jaspr_riverpod. Find packages built for Jaspr on pub.dev using the '),
          a(href: 'https://pub.dev/packages?q=topic%3Ajaspr', [Text('#jaspr')]),
          Text(' topic, or publish your own.'),
        ]),
        Li([
          H3([Text('💙 Support Jaspr')]),
          Text('If you like Jaspr, consider starring us on '),
          a(href: 'https://github.com/schultek/jaspr', [Text('Github')]),
          Text(' and tell your friends.'),
        ]),
      ]),
    ]);
  }

  @css
  static final styles = [
    css('ol').box(maxWidth: 500.px),
  ];
}
