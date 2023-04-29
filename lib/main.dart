import 'package:flutter/material.dart';
import 'app.dart';
import 'loading.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'chat duck',
     // theme: wechatThemdata,
      //routes: <String,WidgetBuilder>{
      //  "app":(BuildContext context) => new App(),
      //"/friends":(_) => new WebView(
      //   url: "https://weixin.qq.com/",
      //  appBar:  new AppBar(
      //    title: new Text("my朋友圈"),

      //  ),
      //  withZoom: true,
      //   withLocalStorage: true,

      // ),
      //  "search" : (BuildContext context) => new search(),
      // },
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingPages(),
        'app': (context) => AppPage(),
      },

      home: new LoadingPages() ,
    );
  }
}



final ThemeData wechatThemdata = new ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Colors.pinkAccent,
);