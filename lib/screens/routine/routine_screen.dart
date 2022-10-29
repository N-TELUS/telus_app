import 'package:flutter/material.dart';

class RoutineScreen extends StatefulWidget {
  RoutineScreen({Key? key}) : super(key: key);

  @override
  State<RoutineScreen> createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<RoutineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("ROUTINE SCREEN"),
      ),
    );
  }
}
