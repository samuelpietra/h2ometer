import 'package:flutter/material.dart';
import 'package:h2ometer/pages/index.dart' as pages;
import 'package:h2ometer/theme/index.dart' as theme;

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.2,
        centerTitle: true,
        backgroundColor: theme.blue50
      ),
      body: pages.Login(),
    );
  }
}
