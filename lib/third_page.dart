import 'package:flutter/material.dart';
import 'package:project_10/fourth_page.dart';
import 'package:project_10/second_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdPage extends StatefulWidget {
  static const String id = "third_page";

  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Third Page",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, FourthPage.id);
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "My font page",
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Sixtyfour',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "My font page",
              style: TextStyle(fontSize: 35, fontFamily: 'Country Wedding'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "My font page",
              style: GoogleFonts.akatab(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
