import 'package:flutter/material.dart';

import 'camera_screen.dart';

void main() {
  runApp(const MyApp());
}

// stateless
// stateful
// class MyApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // constructor
  // build

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const CameraScreen(),
    );
  }
}
