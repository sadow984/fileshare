import 'package:flutter/material.dart';

class SendPage extends StatelessWidget {
  static const routeName = '/sendPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Send Files'),
        ),
        body: Center(
          child: Text('Send Page'),
        ),
      ),
    );
  }
}
