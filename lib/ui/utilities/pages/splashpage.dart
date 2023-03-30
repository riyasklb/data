import 'package:data/ui/utilities/constands.dart';
import 'package:data/ui/utilities/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.asset(
                    'lib/images/WhatsApp Image 2023-02-10 at 14.39.27.jpg'),
              ),
            ),
            kheight30,
            Text(
              'Find your next \n  Clothes here ',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'Explore all the most trending clothes \n     here based on your interest and go \n                        shopping!',
                style: kgrey),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 45,
              width: 370,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF075E54)),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginpage()));
                  },
                  child: Text(
                    'Head on to explore !',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
