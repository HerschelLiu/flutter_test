/*
 * @Author: Herschel
 * @Date: 2021-03-31 16:34:44
 * @LastEditors: Herschel
 * @LastEditTime: 2021-04-13 16:21:49
 * @FilePath: \flutter_application_1\lib\main.dart
 */
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
      },
    );
  }
}
