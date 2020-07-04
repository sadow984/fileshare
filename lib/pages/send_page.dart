import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';

import 'package:file_picker/file_picker.dart';
class SendPage extends StatelessWidget {
  static const routeName = '/sendPage';
  
  void _openFileExplorer() async {

  List<File> files = await FilePicker.getMultiFile(type: FileType.any);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Send Files'),
        ),
        body: Center(
          child: FlatButton(onPressed: _openFileExplorer, child: Text('Select Files!')),

        ),
      ),
    );
  }
}
