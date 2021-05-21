import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOGIN',
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
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.redAccent[100],
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            // ignore: deprecated_member_use

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
                    'Login',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Center(
              child: Text(
                "Don't have an account ?",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      decoration: TextDecoration.underline),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'registerpage');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
