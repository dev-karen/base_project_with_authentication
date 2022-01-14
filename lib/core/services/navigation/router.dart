import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:create_base/core/screens/screens.dart';

part 'router.gr.dart';

abstract class Routes {
  static const root = '/';
  static const splash = '/splash_screen';
}

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: SplashScreen,
      path: Routes.splash,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    RedirectRoute(path: '*', redirectTo: Routes.splash)
  ],
)
class AppRouter extends _$AppRouter {}
