import 'dart:io';

import 'package:flutter/material.dart';

import 'alert_dialogs/cupertino_alert_dialog.dart';
import 'alert_dialogs/material_alert_dialog.dart';

class FourthPage extends StatefulWidget {
  static const String id = "fourth_page";

  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Fourth Page",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (Platform.isAndroid) {
                  showMaterialDialogExample(context);
                } else if (Platform.isIOS) {
                  showCupertinoDialogExample(context);
                }
              },
              child: Text("Show Alert Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
