import 'package:flutter/material.dart';
import 'dart:async';

class LoadingPages extends StatefulWidget {
  const LoadingPages();

  @override
  State<LoadingPages> createState() => _LoadingPagesState();
}

class _LoadingPagesState extends State<LoadingPages> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      print("程序启动啦...");
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context){
    return Container(
      child: Image.asset("images/a.jpg"),
    );
  }
}
