import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('App'),
        ),
      ),
    );
  }
}
