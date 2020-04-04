import 'package:flutter/material.dart';
import 'package:diekabine/pages/splash_switcher.dart';
import 'package:diekabine/pages/splash.dart';
import 'package:diekabine/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Die Kabine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashSwitcher(duration: 2, splash: Splash(), navigateAfter: Home()),
    );
  }
}
