import 'package:flutter/material.dart';
import 'package:project_10/second_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  void doSignIn() {
    print("pressed1111111111111111111111111111");

    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      print("Welcome");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, SecondPage.id);
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
                validator: (input) {
                  !input!.contains("@") ? 'Please enter a valid email' : null;
                },
                onSaved: (input) {
                  setState(() {
                    email = input;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
                validator: (input) {
                  input!.length < 6
                      ? "Password must be at least 6 characters"
                      : null;
                },
                onSaved: (input) {
                  setState(() {
                    password = input;
                  });
                },
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  doSignIn();
                },
                child: const Text("Sign in"))
          ],
        ),
      ),
    );
  }
}
