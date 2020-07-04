import 'package:flutter/material.dart';

import '../pages/send_page.dart';
import '../pages/receive_page.dart';
import '../widget/button.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homePage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.blue[400],
                    Colors.blue[800],
                  ],
                ),
              ),
              height: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          child: Image.asset(
                            'assets/images/avatar.png',
                            fit: BoxFit.cover,
                          ),
                          radius: 40,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "User Name",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 130,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                          color: Colors.blue[900],
                        ),
                        alignment: Alignment.bottomRight,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                              Text(
                                'Invite Friends',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top -
                  180,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyButton(
                    title: 'SEND',
                    color: Colors.blue[700],
                    routeName: SendPage.routeName,
                  ),
                  MyButton(
                    title: 'RECEIVE',
                    color: Colors.green[700],
                    routeName: ReceivePage.routeName,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
