import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:create_base/core/base/base_view.dart';
import 'package:create_base/features/authentication/login/login_screen_m.dart';
import 'package:create_base/features/authentication/login/login_screen_vm.dart';

class LoginScreen extends BaseView<LoginScreenViewmodel> {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginScreenViewmodel, LoginScreenState>(
        bloc: viewModel,
        builder: (context, state) {
          return const SafeArea(
            child: Scaffold(
              body: Center(
                child: Text('login'),
              ),
            ),
          );
        });
  }
}
