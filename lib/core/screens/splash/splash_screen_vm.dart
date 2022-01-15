import 'package:injectable/injectable.dart';

import 'package:create_base/core/base/base_viewmodel.dart';
import 'package:create_base/core/screens/splash/splash_screen_m.dart';
import 'package:create_base/core/services/navigation/navigation.dart';

@injectable
class SplashScreenViewmodel extends BaseViewmodel<SplashScreenState> {
  SplashScreenViewmodel({
    required INavigationService navigationService,
  })  : _navigationService = navigationService,
        super(const Initialized());

  final INavigationService _navigationService;

  void navigateToLogin() {
    Future.delayed(const Duration(seconds: 5), () {
      _navigationService.navigateTo(route: LoginRoute());
    });
  }
}
