import 'package:data/ui/utilities/constands.dart';
import 'package:data/ui/utilities/pages/splash.dart';
import 'package:data/ui/utilities/textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello Again!',
                      style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome back you ve been missed!',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 20,
                ),
                textformfield(
                  icon: Icon(Icons.email_outlined),
                  text: 'Email Address',
                ),
                textformfield(
                  icon: Icon(Icons.lock_open_outlined),
                  text: 'password',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 7, 94, 84),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
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
                            MaterialPageRoute(builder: (context) => splash()));
                      },
                      child: Text(
                        'Sign In ',
                        style: GoogleFonts.lato(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ),
                kheight,
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Divider(
                          height: 2,
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Expanded(
                          flex: 0,
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text(
                                "Continue with",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                ),
                              ))),
                      Expanded(
                        flex: 1,
                        child: Divider(
                          height: 2,
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage('lib/images/full-space-do.png'),
                            fit: BoxFit.fill,
                          )),
                      height: 80,
                      width: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Create an Account',
                          style: kgreen,
                        )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
