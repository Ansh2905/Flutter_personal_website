import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';
import 'projectPage.dart';
import 'contactPage.dart';

class pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.black,
          /* title: Center(
            child: Text(
              "ANSH PATEL",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ), */
          bottom: const TabBar(
            indicatorColor: Colors.lightBlue,
              tabs: <Widget>[
                Tab(
                  child: Text(
                      "Home"
                  ),
                ),
                Tab(
                  child: Text(
                      "Projects"
                  ),
                ),
                Tab(
                  child: Text(
                      "Contact Me"
                  ),
                ),
              ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
              homePage(),
            projectPage(),
            contactPage(),
            ],
        ),
      ),
    );
  }
}
