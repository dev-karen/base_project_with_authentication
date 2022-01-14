import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:create_base/core/base/base_view.dart';
import 'package:create_base/core/screens/splash/splash_screen_m.dart';
import 'package:create_base/core/screens/splash/splash_screen_vm.dart';

class SplashScreenView extends BaseView<SplashScreenViewmodel> {
  SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashScreenViewmodel, SplashScreenState>(
      bloc: viewModel,
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: Text('Splash'),
          ),
        );
      },
    );
  }
}
