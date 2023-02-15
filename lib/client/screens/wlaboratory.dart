import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Widget(s)
import '../templates/customInputDecoration.dart';
import '../widgets/appBarWidget.dart';
// Custom
import '../templates/customBoxDecoration.dart';

var kTextFieldDecoration = appInputDecoration;
var appContainerDecoration = boxDecorationContainer;

class WLaboratory extends StatefulWidget {
  const WLaboratory({super.key});

  @override
  _WLaboratoryState createState() => _WLaboratoryState();
}

class _WLaboratoryState extends State<WLaboratory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appContainerDecoration,
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarWidget(title: "Laboratoire", hideActionProfile: true, actionReturnButton: true),
      )
    );
  }
}