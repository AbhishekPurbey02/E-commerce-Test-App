import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/OtpPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(130.0),
              child: Image.asset("lib/images/logo_B2R.webp"),
            ),
           
            Text(
              "Glad to see You",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
             SizedBox(
              height: 10,
            ),
            Text(
              "Please provide your phone number",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Phone",
                  labelStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.phone,
                  ),
                  suffixIconColor: Colors.grey
            
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CupertinoButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  OtpPage()),
                      );
                    },
                    color: Color.fromARGB(255, 226, 119, 4),
                    child: Text(
                      "Send Code",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
           
          ],
        ),
      ),
    );
  }
}
