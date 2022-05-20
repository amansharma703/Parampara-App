import 'package:flutter/material.dart';
import 'package:parampara/constants.dart';

class shedule extends StatefulWidget {
  @override
  _sheduleState createState() => _sheduleState();
}

class _sheduleState extends State<shedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(title: Text("Shedules"),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text("Will ! be Available later ...",
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),),
        ),
      ),
    );
  }
}
