import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class Timest extends StatefulWidget {
  const Timest({ Key? key }) : super(key: key);

  @override
  State<Timest> createState() => _TimestState();
}

class _TimestState extends State<Timest> {
  var _ProgTimer;

  void _Waktu(){
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _ProgTimer = DateFormat.Hms().format(DateTime.now());
      });
    });
  }

  @override
  void initState() {
    _Waktu();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(_ProgTimer, style: TextStyle(fontSize: 40),);
  }
}