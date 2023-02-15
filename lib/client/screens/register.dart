import 'package:flutter/material.dart';
// Firebase
import 'package:firebase_auth/firebase_auth.dart';
// Modal HUD
import 'package:modal_progress_hud/modal_progress_hud.dart';
// TOP : AppBarWidget
import '../widgets/appBarWidget.dart';
// Widgets
import '../widgets/roundedButtonWidget.dart';
// Custom Decoration
import '../templates/customInputDecoration.dart';
import '../templates/customBoxDecoration.dart';

var kTextFieldDecoration = appInputDecoration;
var appContainerDecoration = boxDecorationContainer;

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appContainerDecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const AppBarWidget(title: "Inscription", hideActionProfile: true, actionReturnButton: true),
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                    // Do something with the email input
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Adresse e-mail...'
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                    // Do something with the password input
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Mot de passe...'
                  )
                ),
                const SizedBox(
                  height: 24.0,
                ),
                RoundedButton(
                  colour: Colors.deepPurple.shade400,
                  title: "S\'enregistrer",
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                      if (newUser != null) {
                        Navigator.pushNamed(context, 'home_screen');
                      }
                    } catch(e) {
                      print(e);
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  }
                )
              ],
            )
          )
        )
      )
    );
  }
}