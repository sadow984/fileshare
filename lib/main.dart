import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './pages/home_page.dart';
import './pages/send_page.dart';
import './pages/receive_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.blue[800],
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FileShare',
      home: HomePage(),
      routes: {
        SendPage.routeName: (context) => SendPage(),
        ReceivePage.routeName: (context) => ReceivePage(),
      },
    );
  }
}
