import 'package:flutter/material.dart';

import 'package:create_base/app.dart';
import 'package:create_base/setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();
  runApp(locateService<App>());
}
