import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/app_config.dart';
import 'package:movie_app/config/app_router.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/utils/app_color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    // get Random image when open app
    useMemoized(
        () => AppConfig.background = Assets
            .image.values[Random().nextInt(Assets.image.values.length)].path,
        []);

    return MaterialApp.router(
      theme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: AppColor.primary,
      ),
      themeMode: ThemeMode.dark,
      //routerConfig: appRouter.config(),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
