// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:create_base/app.dart' as _i3;
import 'package:create_base/setup.dart' as _i5;
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.App>(() => _i3.App(key: get<_i4.Key>()));
  gh.factory<_i4.Key>(() => registerModule.key);
  return get;
}

class _$RegisterModule extends _i5.RegisterModule {
  @override
  _i4.UniqueKey get key => _i4.UniqueKey();
}
