import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

import '../ui/utilities/constands.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({required this.text1, required this.text2, super.key});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        Text(text2,
            style: TextStyle(color: kgreen1, fontWeight: FontWeight.bold))
      ],
    );
  }
}

class container extends StatelessWidget {
  const container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'lib/images/4305423.png',
          ),
        ),
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[200],
      ),
      height: 47,
      width: 37,
    );
  }
}
