import 'package:a5_app/client/widgets/appBarWidget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: const Scaffold(
        appBar: AppBarWidget(title: "Accueil", hideActionProfile: false, actionReturnButton: false),

      )
    );
  }
}