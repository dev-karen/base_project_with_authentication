import 'package:injectable/injectable.dart';

import 'package:create_base/core/base/base_viewmodel.dart';
import 'package:create_base/features/authentication/login/login_screen_m.dart';

@injectable
class LoginScreenViewmodel extends BaseViewmodel<LoginScreenState> {
  LoginScreenViewmodel() : super(const Initialize());
}
