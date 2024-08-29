
# Jaspr Lucide Icons

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: BSD-3-Clause][license_badge]][license_link]

Lucide Icons for Jaspr

## Installation 💻

**❗ In order to start using Jaspr Lucide Icons, you must have the [Dart SDK][dart_install_link] installed on your machine.**

To install Jaspr Lucide Icons via `dart pub`:

```sh
dart pub add jaspr_lucide_icons
```

### Installing Lucide Icons with Package Managers

You can also install Lucide Icons using popular package managers:

- **pnpm**:
  ```sh
  pnpm install lucide
  ```
- **yarn**:
  ```sh
  yarn add lucide
  ```
- **npm**:
  ```sh
  npm install lucide
  ```

## Usage 🛠️

To use the Lucide Icons in your Jaspr project, import and include it as the last component in your root app file:

```dart
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_lucide_icons/jaspr_lucide_icons.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'components/header.dart';
import 'pages/about.dart';
import 'pages/home.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'main', [
      const Header(),
      Router(routes: [
        Route(path: '/', title: 'Home', builder: (context, state) => const Home()),
        Route(path: '/about', title: 'About', builder: (context, state) => const About()),
      ]),
    ]);
    yield importLucideIcons(mode: Mode.development);
  }

  @css
  static final styles = [
    css('.main', [
      css('&')
          .box(height: 100.vh)
          .flexbox(direction: FlexDirection.column, wrap: FlexWrap.wrap),
      css('section').flexItem(flex: Flex(grow: 1)).flexbox(
        direction: FlexDirection.column,
        justifyContent: JustifyContent.center,
        alignItems: AlignItems.center,
      ),
    ]),
  ];
}
```

### Example: Using Lucide Icons in a Component

Here's an example of how to use Lucide Icons within a Jaspr component:

```dart
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_lucide_icons/jaspr_lucide_icons.dart';

@client
class About extends StatelessComponent {
  const About({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      ol([
        li([
          h3([lucideIcon('book-open', color: Colors.blue), text(' Documentation')]),
          text('Jaspr's '),
          a(href: 'https://docs.page/schultek/jaspr', [text('official documentation')]),
          text(' provides you with all the information you need to get started.'),
        ]),
        li([
          h3([lucideIcon('message-circle-more', color: Colors.black), text(' Community')]),
          text('Got stuck? Ask your question on the official '),
          a(href: 'https://docs.page/schultek/jaspr', [text('Discord server')]),
          text(' for the Jaspr community.'),
        ]),
        li([
          h3([lucideIcon('package', color: Colors.black), text(' Ecosystem')]),
          text('Get official packages and integrations for your project like jaspr_router, jaspr_tailwind, or jaspr_riverpod.'),
          text(' Find packages built for Jaspr on pub.dev using the '),
          a(href: 'https://pub.dev/packages?q=topic%3Ajaspr', [text('#jaspr')]),
          text(' topic, or publish your own.'),
        ]),
        li([
          h3([lucideIcon('heart', color: Colors.black), text(' Support Jaspr')]),
          text('If you like Jaspr, consider starring us on '),
          a(href: 'https://github.com/schultek/jaspr', [text('GitHub')]),
          text(' and tell your friends.'),
        ]),
      ]),
    ]);
  }

  @css
  static final styles = [
    css('ol').box(maxWidth: 500.px),
  ];
}
```

### Lucide Icon Definition

Here’s the function definition for `lucideIcon`:

```dart
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
});
```

## Continuous Integration 🤖

Jaspr Lucide Icons comes with a built-in [GitHub Actions workflow][github_actions_link] powered by [Very Good Workflows][very_good_workflows_link]. This workflow ensures your code is formatted, linted, and tested automatically on every pull request and push. The project uses [Very Good Analysis][very_good_analysis_link] for strict analysis options, and code coverage is enforced using [Very Good Workflows][very_good_coverage_link].

## Running Tests 🧪

To run all unit tests and generate a coverage report:

```sh
dart pub global activate coverage 1.2.0
dart test --coverage=coverage
dart pub global run coverage:format_coverage --lcov --in=coverage --out=coverage/lcov.info
genhtml coverage/lcov.info -o coverage/
open coverage/index.html
```

## Example Project Structure 🗂️

When integrating Jaspr Lucide Icons into your project, it's helpful to maintain a clear project structure. Here's an example of how you can structure your project files:

```
/your_project
|-- lib/
|   |-- components/
|   |   |-- header.dart
|   |-- pages/
|   |   |-- home.dart
|   |   |-- about.dart
|   |-- app.dart
|   |-- main.dart
|-- pubspec.yaml
|-- README.md
```

- **components/header.dart**: Contains reusable components like the header.
- **pages/home.dart**: Defines the homepage.
- **pages/about.dart**: Defines the about page with Lucide Icons.
- **app.dart**: The main application component where routes and global styles are defined.
- **main.dart**: The entry point for the application.

## Best Practices 📝

- **Optimize Performance**: Only include the icons you need and import them efficiently to keep the application performant. Use importLucideIcons(mode: Mode.production) in production;
- **Consistent Styling**: Use consistent styles across your components for a unified look and feel. You can define common styles in a shared `styles.dart` file and apply them across your components.

## Support & Contributions 🙌

If you encounter any issues while using Jaspr Lucide Icons, feel free to open an issue on the [GitHub repository][github_repo_link]. Contributions are welcome! Whether it's improving the documentation, fixing bugs, or adding new features, your contributions will help make this project better.

To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes and commit them (`git commit -m 'Add your feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

## License 📄

This project is licensed under the BSD-3-Clause License - see the [LICENSE][license_link] file for details.

## Acknowledgements 🙏

Special thanks to the contributors and maintainers of the Jaspr and Lucide projects, as well as the community members who provide valuable feedback and support.

[dart_install_link]: https://dart.dev/get-dart
[github_repo_link]: https://github.com/flutterplaza/jasprfire/jaspr_lucide_icons
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-BSD--3--Clause-blue.svg
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
