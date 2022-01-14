import 'package:flutter/material.dart';

import 'package:create_base/app.dart';
import 'package:create_base/setup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();
  runApp(locateService<App>());
}
