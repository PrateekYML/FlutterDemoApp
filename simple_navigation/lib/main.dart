import 'package:flutter/material.dart';
import 'package:simple_navigation/HomeScreen.dart';
import 'package:simple_navigation/HomeViewController.dart';
import 'package:simple_navigation/OnBoardingPager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingPager()
    );
  }
}

