import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:create_base/core/base/base_view.dart';
import 'package:create_base/features/authentication/login/login_screen_m.dart';
import 'package:create_base/features/authentication/login/login_screen_vm.dart';

class LoginScreen extends BaseView<LoginScreenViewmodel> {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  static const _spacer = SizedBox(height: 20);
  static const _avatarSize = 100.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginScreenViewmodel, LoginScreenState>(
        bloc: viewModel,
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildHeader(),
                    _spacer,
                    _buildForm(),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget _buildHeader() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue[300],
      ),
      child: const FittedBox(
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      height: _avatarSize,
      width: _avatarSize,
    );
  }

  Widget _buildForm() {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(hintText: 'email'),
          ),
          _spacer,
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(hintText: 'password'),
          ),
          _spacer,
          ElevatedButton(onPressed: () {}, child: const Text('login'))
        ],
      ),
    );
  }
}
