import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:create_base/core/base/base_view.dart';
import 'package:create_base/core/screens/splash/splash_screen_m.dart';
import 'package:create_base/core/screens/splash/splash_screen_vm.dart';

class SplashScreen extends BaseView<SplashScreenViewmodel> {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashScreenViewmodel, SplashScreenState>(
      bloc: viewModel,
      builder: (context, state) {
        viewModel.navigateToLogin();
        return SafeArea(
          child: Scaffold(
            body: Container(
              color: Colors.amber,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        );
      },
    );
  }
}
