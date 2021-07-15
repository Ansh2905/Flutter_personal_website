import 'package:flutter/material.dart';


class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/homeBackground.jpg"),
        fit: BoxFit.cover,
      )),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: Text(
            "Ansh Patel",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),

          ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text(
            "Student at the University of Toronto",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
              fontWeight: FontWeight.w100,
            ),
          ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              "Web Development Intern at LetsStopAids",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 20,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          Container(
            height: 30,
            width: 110,
            margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: ElevatedButton(
              child: Text(
              "Resume",
                style: TextStyle(
                    color: Colors.white,
                  fontSize: 20,
                ),
            ),
              onPressed: (){},
          ),
          ),
        ],

      ),
    );
  }
}
