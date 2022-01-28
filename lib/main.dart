import 'package:flutter/material.dart';
import 'package:stepper/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.light(primary: Colors.red)),
    );
  }
}
