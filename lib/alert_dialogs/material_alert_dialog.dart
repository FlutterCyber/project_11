import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showMaterialDialogExample(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Material Alert'),
        content: Text('This is a Material-style alert dialog.'),
        actions: <Widget>[
          TextButton(
            child: Text('Cancel'),
            onPressed: () {

              Navigator.of(context).pop(); // Close the dialog
            },
          ),
          TextButton(
            child: Text('OK'),
            onPressed: () {
              // Perform action when OK is pressed
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
        ],
      );
    },
  );
}