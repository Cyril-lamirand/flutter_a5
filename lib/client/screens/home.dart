import 'package:a5_app/client/widgets/appBarWidget.dart';
import 'package:flutter/material.dart';
// Custom
import '../templates/customBoxDecoration.dart';

var appContainerDecoration = boxDecorationContainer;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appContainerDecoration,
      child: Scaffold(
        appBar: AppBarWidget(title: "Accueil", hideActionProfile: false, actionReturnButton: false),
        body: ListView(
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, "laboratory_screen");
              }
            )
          ],
        ),
      )
    );
  }
}