import 'package:jaspr/jaspr.dart';
import 'package:jaspr_svg/jaspr_svg.dart';

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
    yield section([
      ol([
        li([
          h3([
            svgAsset('web/images/material-symbols--book.svg'),
            text(' Documentation')
          ]),
          text('Jaspr\'s '),
          a(
              href: 'https://docs.page/schultek/jaspr',
              [text('official documentation')]),
          text(' provides you with all information you need to get started.'),
        ]),
        li([
          h3([
            svgDataUri(
                'data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIiBzdHJva2U9ImN1cnJlbnRDb2xvciIgc3Ryb2tlLXdpZHRoPSIyIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGNsYXNzPSJsdWNpZGUgbHVjaWRlLW1lc3NhZ2Utc3F1YXJlLW1vcmUiPjxwYXRoIGQ9Ik0yMSAxNWEyIDIgMCAwIDEtMiAySDdsLTQgNFY1YTIgMiAwIDAgMSAyLTJoMTRhMiAyIDAgMCAxIDIgMnoiLz48cGF0aCBkPSJNOCAxMGguMDEiLz48cGF0aCBkPSJNMTIgMTBoLjAxIi8+PHBhdGggZD0iTTE2IDEwaC4wMSIvPjwvc3ZnPg=='),
            text(' Community')
          ]),
          text('Got stuck? Ask your question on the official '),
          a(href: 'https://docs.page/schultek/jaspr', [text('Discord server')]),
          text(' for the Jaspr community.'),
        ]),
        li([
          h3([
            svgRaw(
                '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"><path d="m7 16.5l-5-3l5-3l5 3V19l-5 3z"/><path d="M2 13.5V19l5 3m0-5.455l5-3.03m5 2.985l-5-3l5-3l5 3V19l-5 3zM12 19l5 3m0-5.5l5-3m-10 0V8L7 5l5-3l5 3v5.5M7 5.03v5.455M12 8l5-3"/></g></svg>'),
            text(' Ecosystem')
          ]),
          text(
              'Get official packages and integrations for your project like jaspr_router, jaspr_tailwind or jaspr_riverpod. Find packages built for Jaspr on pub.dev using the '),
          a(href: 'https://pub.dev/packages?q=topic%3Ajaspr', [text('#jaspr')]),
          text(' topic, or publish your own.'),
        ]),
        li([
          h3([
            svgDataUri(
                'data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxZW0iIGhlaWdodD0iMWVtIiB2aWV3Qm94PSIwIDAgMTI4IDEyOCI+PHBhdGggZmlsbD0iIzE5NzZkMiIgZD0iTTkzLjk5IDguOTdjLTIxLjkxIDAtMjkuOTYgMjIuMzktMjkuOTYgMjIuMzlzLTcuOTQtMjIuMzktMzAtMjIuMzljLTE2LjU4IDAtMzUuNDggMTMuMTQtMjguNSA0My4wMXM1OC41NiA2Ny4wOCA1OC41NiA2Ny4wOHM1MS4zOS0zNy4yMSA1OC4zOC02Ny4wOGM2Ljk4LTI5Ljg3LTEwLjU2LTQzLjAxLTI4LjQ4LTQzLjAxIi8+PHBhdGggZmlsbD0iIzBkNDdhMSIgZD0iTTMwLjY1IDExLjJjMTcuMiAwIDI1Ljc0IDE4LjQ5IDI4LjUgMjUuOThjLjM5IDEuMDcgMS44OCAxLjEgMi4zMy4wNkw2NCAzMS4zNUM2MC40NSAyMC4wMSA1MC42OSA4Ljk3IDM0LjAzIDguOTdjLTYuOSAwLTE0LjE5IDIuMjgtMTkuODYgNy4wOWM1LjAxLTMuMjkgMTAuODgtNC44NiAxNi40OC00Ljg2bTYzLjM0LTIuMjNjLTUuMjkgMC05Ljc3IDEuNTQtMTMuNTMgMy44NWMyLjY0LTEuMDIgNS41Ni0xLjYyIDguOC0xLjYyYzE2LjIxIDAgMzAuNzIgMTIuMjkgMjQuMTcgNDAuN2MtNS42MiAyNC4zOS0zOC40NiA1My45OC00OC40OSA2NS4yN2MtLjY0LjcyLS44NiAxLjg4LS44NiAxLjg4czUxLjM5LTM3LjIxIDU4LjM4LTY3LjA4YzYuOTktMjkuODYtMTEuODktNDMtMjguNDctNDMiLz48cGF0aCBmaWxsPSIjZmZmIiBkPSJNMTcuMDQgMjQuODJjMy43NS00LjY4IDEwLjQ1LTguNTUgMTYuMTMtNC4wOWMzLjA3IDIuNDEgMS43MyA3LjM1LTEuMDIgOS40M2MtNCAzLjA0LTcuNDggNC44Ny05LjkyIDkuNjNjLTEuNDYgMi44Ni0yLjM0IDUuOTktMi43OSA5LjE4Yy0uMTggMS4yNi0xLjgzIDEuNTctMi40NS40NmMtNC4yMi03LjQ4LTUuNDItMTcuNzguMDUtMjQuNjFtNjAuMTIgOS44NGMtMS43NiAwLTMtMS43LTIuMzYtMy4zNGMxLjE5LTMuMDIgMi43My01Ljk0IDQuNTgtOC41NGMyLjc0LTMuODQgNy45NS02LjA4IDExLjI1LTMuNzVjMy4zOCAyLjM4IDIuOTQgNy4xNC41NyA5LjQ0Yy01LjA5IDQuOTMtMTEuNTEgNi4xOS0xNC4wNCA2LjE5IiBvcGFjaXR5PSIwLjMiLz48L3N2Zz4='),
            text(' Support Jaspr')
          ]),
          text('If you like Jaspr, consider starring us on '),
          a(href: 'https://github.com/schultek/jaspr', [text('Github')]),
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
