import 'package:flutter/material.dart';
import 'projectView.dart';

class projectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: GridView.count(
        scrollDirection: Axis.vertical,
        childAspectRatio: 3,
        crossAxisCount: 2,
        crossAxisSpacing: 50,
        mainAxisSpacing: 50,
        padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
        children: [
          projectTemplate("Project 1"),
          projectTemplate("Project 2"),
          projectTemplate("Project 3"),
          projectTemplate("Project 4"),
          projectTemplate("Project 5"),
          projectTemplate("Project 6"),
        ],
      ),
    );
  }
}

class projectTemplate extends StatelessWidget {
  final String name;
  projectTemplate(this.name);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Text(
              "$name",
              style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.w800,
                fontSize: 40,
              ),
            ),
            ),
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
                child: ElevatedButton(
                    child: Text(
                        "View",
                      style: TextStyle(
                        fontSize: 20,
                      )
                    ),
                  onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => projectView(name)),
                      );
                  },
                ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

