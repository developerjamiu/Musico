import 'package:flutter/material.dart';

import 'ui/widgets/bottom_navigator.dart';

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
