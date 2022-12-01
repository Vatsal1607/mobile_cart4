import 'package:flutter/material.dart';
import 'package:mobile_cart4/home_screen.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mobile cart'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: const HomeScreen(),
      ),
    );
  }
}
