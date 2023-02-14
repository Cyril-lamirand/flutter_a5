import 'package:flutter/material.dart';
// TOP : AppBarWidget
import '../widgets/appBarWidget.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Inscription"),
    );
  }
}