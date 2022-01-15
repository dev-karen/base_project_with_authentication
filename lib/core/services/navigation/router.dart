import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:create_base/core/screens/screens.dart';
import 'package:create_base/features/features.dart';

part 'router.gr.dart';

abstract class Routes {
  static const root = '/';
  static const splash = '/splash';
  static const login = '/login';
}

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: SplashScreen,
      path: Routes.splash,
      transitionsBuilder: TransitionsBuilders.slideTop,
    ),
    CustomRoute(
      page: LoginScreen,
      path: Routes.login,
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    RedirectRoute(path: '*', redirectTo: Routes.splash)
  ],
)
class AppRouter extends _$AppRouter {}
