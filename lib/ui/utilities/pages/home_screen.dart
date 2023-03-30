import 'dart:js_util';

import 'package:data/ui/utilities/constands.dart';
import 'package:data/widgets/widget_topcatogory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, top: 25, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hey Riyas',
                    style: textdesign,
                  ),
                  Icon(Icons.notifications_outlined)
                ],
              ),
              Text(
                'Begin your shopping !!',
                style: kgrey,
              ),
              kheight30,
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(221, 158, 242, 245),
                        borderRadius: BorderRadius.circular(5)),
                    height: 120,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Enjoy upto \n 50% Discount',
                        style: TextStyle(
                            color: Color(0xFF075E54),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200, top: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "lib/images/istockphoto-599255252-612x612.jpg",
                        height: 95,
                        width: 150,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 58),
                    child: SizedBox(
                      height: 36,
                      width: 110,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF075E54)),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Subscribe ',
                          style: GoogleFonts.lato(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //    kheight20,
              kheight20,
              MyWidget(text1: 'Top Category', text2: "SEE ALL"), kheight20,
              Row(
                children: [
                  container(),
                  SizedBox(
                    width: 20,
                  ),
                  container()
                ],
              ),
              kheight20,
              MyWidget(text1: "New Arrivals", text2: 'VIEW MORE'),
              ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  // Create a widget for each item in the list
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  // Create a separator widget for each item in the list
                  return Divider();
                },
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
