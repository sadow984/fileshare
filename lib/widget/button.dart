import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final String routeName;
  final Color color;

  MyButton({
    @required this.title,
    @required this.color,
    @required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () => Navigator.of(context).pushNamed(routeName),
        child: Container(
          width: 180,
          height: 45,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
