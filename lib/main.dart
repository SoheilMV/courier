import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:courier/screens/home_screen.dart';
import 'package:courier/screens/test_screen.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:window_manager/window_manager.dart';

bool get isDesktop {
  if (kIsWeb) return false;
  return [
    TargetPlatform.windows,
    TargetPlatform.linux,
    TargetPlatform.macOS,
  ].contains(defaultTargetPlatform);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (isDesktop) {
    await WindowManager.instance.ensureInitialized();
    windowManager.waitUntilReadyToShow(
      WindowOptions(
        skipTaskbar: false,
        titleBarStyle: TitleBarStyle.hidden,
        windowButtonVisibility: false,
      ),
    );
    doWhenWindowReady(() {
      final win = appWindow;
      win.minSize = Size(500, 500);
      win.size = Size(800, 400);
      win.alignment = Alignment.center;
      win.show();
    });
  }

  runApp(const Application());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/test',
      builder: (context, state) => const TestScreen(),
    ),
  ],
);

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    // return FluentApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter Demo',
    //   themeMode: ThemeMode.dark,
    //   theme: FluentThemeData(brightness: Brightness.dark),
    //   home: HomeScreen(),
    // );

    return FluentApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Fluent UI Navigation',
      themeMode: ThemeMode.dark,
      theme: FluentThemeData(brightness: Brightness.dark),
      routerConfig: _router,
    );
  }
}
