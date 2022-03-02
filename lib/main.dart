import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: app_interface(),
    );
  }

  Widget app_interface(){
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 200, bottom: 50),
              child: FlutterLogo(size: 50.0,)
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))
                    ),
                    hintText: "Email"
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))
                    ),
                    hintText: "Password"
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 50.0, top: 20.0, right: 50.0, bottom: 5.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50.0),
                ),
                onPressed: () {},
                child: Text(
                    "Log In",
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
              ),
            ),
            
            Text("Forgot password?")


          ],
        ),
      ),
    );
  }

}
