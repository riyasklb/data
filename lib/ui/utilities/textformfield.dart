import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class textformfield extends StatelessWidget {
  const textformfield({required this.icon, required this.text, super.key});
  final Icon icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.grey[250],
          prefixIcon: icon,
          hintText: text,
          hintStyle: TextStyle(
            color: Colors.grey[800],
          ),
          border: InputBorder.none,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(0, 158, 158, 158), width: 2.0),
            borderRadius: BorderRadius.circular(16.0),
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        ),
      ),
    );
  }
}
