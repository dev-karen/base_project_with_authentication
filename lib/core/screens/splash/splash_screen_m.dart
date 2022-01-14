import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:create_base/core/base/base_state.dart';

part 'splash_screen_m.freezed.dart';

@freezed
class SplashScreenState extends BaseState with _$SplashScreenState {
  const factory SplashScreenState.initialized() = Initialized;
}
