import 'package:a5_app/client/widgets/appBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widgets/roundedButtonWidget.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import '../templates/customInputDecoration.dart';
import '../templates/customBoxDecoration.dart';

//code for designing the UI of our text field where the user writes his email id or password
var kTextFieldDecoration = appInputDecoration;
var appContainerDecoration = boxDecorationContainer;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final _auth = FirebaseAuth.instance;

class _LoginState extends State<Login> {
  late String email;
  late String password;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appContainerDecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const AppBarWidget(title: "Connexion", hideActionProfile: true, actionReturnButton: true),
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: "Adresse email..."
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
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Mot de passe...'
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                RoundedButton(
                  colour: Colors.deepPurpleAccent.shade200,
                  title: "S\'authentifier",
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                      if (user != null) {
                        Navigator.pushNamed(context, 'home_screen');
                      }
                    } catch (e) {
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