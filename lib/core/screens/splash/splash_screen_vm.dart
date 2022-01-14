import 'package:injectable/injectable.dart';

import 'package:create_base/core/base/base_viewmodel.dart';
import 'package:create_base/core/screens/splash/splash_screen_m.dart';

@injectable
class SplashScreenViewmodel extends BaseViewmodel<SplashScreenState> {
  SplashScreenViewmodel() : super(const Initialized());
}
