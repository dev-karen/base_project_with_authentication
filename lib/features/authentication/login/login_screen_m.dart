import 'package:create_base/core/base/base_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_screen_m.freezed.dart';

@freezed
class LoginScreenState extends BaseState with _$LoginScreenState {
  const factory LoginScreenState.initialize() = Initialize;
}
