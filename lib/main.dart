import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool Ishidden = true;

  TextEditingController emailc = TextEditingController();
  TextEditingController passc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Aplikasi terbaru")),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              TextField(
                controller: emailc,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  label: Text(
                    "Email",
                    style: TextStyle(),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: passc,
                autocorrect: false,
                obscureText: Ishidden,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key),
                  suffix: IconButton(
                    onPressed: () {
                      if (Ishidden == true) {
                        Ishidden = false;
                      } else {
                        Ishidden = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.remove_red_eye),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  print("Email ${emailc.text}dan Password ${passc.text}");
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              )
            ],
          ),
        ));
  }
}
