/*
 * @Author: Herschel
 * @Date: 2021-04-14 08:21:26
 * @LastEditors: Herschel
 * @LastEditTime: 2021-04-14 13:30:15
 * @FilePath: \flutter_application_1\lib\widgets\searchBar.dart
 */
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar(
      {Key key, this.disabled, this.page, this.placeholder, this.background})
      : super(key: key);

  final bool disabled;
  final String page;
  final String placeholder;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: DecoratedBox(
        decoration: BoxDecoration(color: background ?? Colors.white),
        child: Padding(
            child:
                Row(children: <Widget>[SearchInput(placeholder: placeholder)]),
            padding: EdgeInsets.fromLTRB(15.0, 0, disabled ? 15.0 : 0.0, 0)),
      ),
    );
  }
}

// 搜索框部分
class SearchInputBox extends StatelessWidget {
  const SearchInputBox({Key key, this.placeholder}) : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color.fromRGBO(246, 246, 246, 1)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(26.0, 0, 26.0, 0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(right: 13.5),
                  child: Image.asset('assets/img/icon-search.png',
                      width: 17.0, height: 17.0)),
              // SearchInput()
            ]),
      ),
    );
  }
}

// 搜索输入框
class SearchInput extends StatefulWidget {
  SearchInput({Key key, this.disabled, this.placeholder}) : super(key: key);

  final bool disabled;
  final String placeholder;

  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        autofocus: true,
        enabled: widget.disabled,
      ),
    );
  }
}
