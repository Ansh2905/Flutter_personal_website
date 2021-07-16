import 'package:flutter/material.dart';
import 'dart:ui';

class projectView extends StatelessWidget {
  final String name;

  projectView(this.name);

  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("$name"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Text(
              "$name",
              style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.w800,
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Container(
                width: myWidth * 0.95,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                )),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
              child: ElevatedButton(
                child: Container(
                  height: 60,
                  width: 160,
                  child: Center(
                  child: Text(
                  "Go back to full list",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
