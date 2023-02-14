import 'package:flutter/material.dart';

import '../widgets/roundedButton.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.6, 0.9],
          colors: [
            Colors.deepPurple,
            Colors.deepPurpleAccent,
            Colors.teal,
            Colors.tealAccent,
          ],
        )
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RoundedButton(
                  colour: Colors.deepPurpleAccent.shade400,
                  title: 'Connexion',
                  onPressed: () => {
                    Navigator.pushNamed(context, 'login_screen')
                  },
                ),
                RoundedButton(
                    colour: Colors.deepPurpleAccent.shade200,
                    title: 'S\'enregistrer',
                    onPressed: () => {
                      Navigator.pushNamed(context, 'registration_screen')
                      //Navigator.of(context).popUntil(ModalRoute.withName("registration_screen"));
                    }
                ),
              ]
            ),
          )
      ),
    );
  }
}