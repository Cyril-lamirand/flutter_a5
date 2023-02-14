import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.5, 0.75]
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.deepPurpleAccent.shade200,
                      minRadius: 35.0,
                      child: Icon(
                        Icons.call,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.deepPurpleAccent.shade100,
                      minRadius: 60.0,
                      child: CircleAvatar(
                        radius: 55.0,
                        backgroundImage:
                        NetworkImage('https://avatars.githubusercontent.com/u/59066441?v=4'),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.deepPurpleAccent.shade200,
                      minRadius: 35.0,
                      child: Icon(
                        Icons.message,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Cyril LAMIRAND',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Développeur',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          )
        ]
    );
  }
}