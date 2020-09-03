import 'package:flutter/material.dart';
import 'package:musico/ui/widgets/bottom_navigator.dart';

import 'ui/screens/splash_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musico',
      debugShowCheckedModeBanner: false,
      home: BottomNavigator(),
    );
  }
}
