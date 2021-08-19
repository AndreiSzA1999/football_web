import 'package:flutter/material.dart';
import 'package:football_web/router/router_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/home',
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
