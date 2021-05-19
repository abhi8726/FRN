import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'REGISTER',
          style: GoogleFonts.notoSans(),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      backgroundColor: Colors.red[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  "F R N",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 80, shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.blue,
                      offset: Offset(7.0, 5.0),
                    ),
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.red,
                      offset: Offset(5.0, 5.0),
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 270,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.redAccent[100],
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        color: Colors.deepOrange[200],
                        width: 275,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Name',
                            hintText: 'Name',
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[a-zA-Z]'))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Colors.deepOrange[200],
                      width: 275,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'E-mail',
                          hintText: 'Email',
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp('[a-zA-Z@.]'))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Colors.deepOrange[200],
                      width: 275,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Password',
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp('[a-zA-Z@.1-9]'))
                        ],
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Colors.deepOrange[200],
                      width: 275,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password',
                          hintText: 'Confirm Password',
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp('[a-zA-Z@.1-9]'))
                        ],
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                height: 60,
                width: 340,
                child: Center(
                  child: Text(
                    'Register As Donor',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                height: 60,
                width: 340,
                child: Center(
                  child: Text(
                    'Register As Receiver',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Already have an account ?',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: GestureDetector(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      decoration: TextDecoration.underline),
                ),
                onTap: () {
                  print("hello");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
