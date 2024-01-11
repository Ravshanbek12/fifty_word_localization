import 'package:easy_localization/easy_localization.dart';
import 'package:fifty_word_localization/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';

import 'generated/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  /// Commands for running easy localization and generating code
  /// flutter pub run easy_localization:generate -o codegen_loader.g.dart -S lib/assets/strings
  /// flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart -S lib/assets/strings
  runApp(EasyLocalization(
      supportedLocales: const [
        Locale("uz"),
        Locale("ru"),
        Locale("en"),
      ],
      assetLoader: CodegenLoader(),
      fallbackLocale: const Locale('uz'),
      saveLocale: true,
      path: 'lib/assets/strings',
      child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final String changedString = "";
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Translations"),
        ),
        body: PageView(
          controller: controller,
          onPageChanged: (v) async {},
          scrollDirection: Axis.horizontal,
          children: [
            Center(
              child: const Text(LocaleKeys.home).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.start).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.left).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.right).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.child).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.actually).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.always).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.apple).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.back).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.car).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.clearly).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.constantly).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.currently).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.definitely).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.down).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.evening).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.eventually).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.frequently).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.generally).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.go).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.hello).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.initially).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.last).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.maybe).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.morning).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.naturally).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.never).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.no).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.normally).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.obviously).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.occasionally).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.often).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.particularly).tr(),
            ),
            Center(
              child: const Text(LocaleKeys.perhaps).tr(),
            ),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.setLocale(Locale("uz"));
              },
              child: const Text("O'zbekcha"),
            ),
            FloatingActionButton(
              onPressed: () {
                context.setLocale(Locale("ru"));
              },
              child: const Text("Russia"),
            ),
            FloatingActionButton(
              onPressed: () {
                context.setLocale(Locale("en"));
              },
              child: const Text("English"),
            ),
          ],
        ),
      );
    });
  }
}
