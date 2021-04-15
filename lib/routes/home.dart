/*
 * @Author: Herschel
 * @Date: 2021-04-13 16:18:14
 * @LastEditors: Herschel
 * @LastEditTime: 2021-04-14 11:32:30
 * @FilePath: \flutter_application_1\lib\routes\home.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/searchBar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SearchBar(),
        ),
        // appBar: AppBar(
        //   title: SafeArea(top: true, child: SearchBar()),
        // ),
        body: Center(child: Column(children: [SearchBar()])));
  }
}
