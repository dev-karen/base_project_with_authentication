import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:create_base/setup.config.dart';

GetIt getIt = GetIt.instance;

T locateService<T extends Object>() => getIt.get<T>();

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
  asExtension: false,
)
void configureDependencies() => $initGetIt(getIt);

// Using a register module (for third party dependencies)
// if you declare a module member as a method instead of a simple accessor, injectable
// will treat it as a factory method, meaning it will inject it's parameters as it would with a regular constructor.
// The same way if you annotate an injected param with @factoryParam injectable will treat it as a factory param.
@module
abstract class RegisterModule {
  @Injectable(as: Key)
  UniqueKey get key;
}
