import 'package:assignment/screens/ui_screen.dart';
import'package:flutter/material.dart';




void main(){
  runApp(RunApp());
}


class RunApp extends StatelessWidget {
  const RunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  UiScreen();
  }
}
