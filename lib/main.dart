import 'package:flutter/material.dart';

import 'UI/SplashScreen.dart';
import 'component/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    backgroundColor: Colors.transparent

      ),
      home: const SplashScreen(),
    );
  }
}
