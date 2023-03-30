import 'dart:async';
//import 'dart:html';

import 'package:data/ui/utilities/constands.dart';
import 'package:data/ui/utilities/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => page1())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hey Riyas',
                style: textdesign,
              ),
              Text(
                'wait here,we are fetching data',
                style: TextStyle(color: Colors.grey[600]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
