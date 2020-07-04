import 'package:flutter/material.dart';

class ReceivePage extends StatelessWidget {
  static const routeName = '/receivePage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Receive'),
        ),
        body: Center(
          child: Text('Receive Page'),
        ),
      ),
    );
  }
}
