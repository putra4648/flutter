import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          color: Colors.blue,
          child: ListView(
            padding: EdgeInsets.only(top: 50),
            children: <Widget>[
              Center(
                child: Text(
                  'Please Login or Register before continue',
                  style: TextStyle(
                    fontFamily: 'Bebas',
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 520,
              ),
              Center(
                child: Text(
                  'or Instant Register with Social Media',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Center(
                child: SignInButton(
                  Buttons.Google,
                  text: 'Login with Google',
                  onPressed: () {},
                ),
              ),
              Center(
                child: SignInButton(
                  Buttons.Facebook,
                  text: 'Login with Facebook',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 125, left: 260, right: 10),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 260, right: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 125, right: 260, left: 10),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 260, left: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
        ]),
        Center(
          child: Container(
            padding: const EdgeInsets.all(35),
            height: 400,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Container(
              height: 300,
              decoration: ShapeDecoration(
                color: Colors.blueAccent,
                shape: Border.all(
                  style: BorderStyle.solid,
                  width: 1.5,
                  color: Colors.white,
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Center(
                    child: Text(
                      'Create a Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Bebas',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    title: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Your Username',
                        hintStyle: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Your email address',
                        hintStyle: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    title: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Your password',
                          hintStyle: TextStyle(color: Colors.red)),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    title: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Confirim Your password',
                          hintStyle: TextStyle(color: Colors.red)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  Divider(
                    height: 20,
                    color: Colors.white,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Have a Account?',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
