import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void onLoginPressed() {
    Navigator.pushNamed(context, '/homeScreen');
  }

  void onRegisPressed() {
    Navigator.pushNamed(context, '/registerScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.blueAccent],
              ),
            ),
            child: ListView(
              padding: EdgeInsets.only(top: 80),
              children: <Widget>[
                Center(
                  child: Text(
                    'WELCOME TO OUR APP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Abril',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Please Login or Register before continue',
                    style: TextStyle(
                      fontFamily: 'Bebas',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 440,
                ),
                Center(
                  child: Text(
                    'or Instant Login with Social Media',
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
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.blueAccent],
                  ),
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
                        'LOGIN',
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
                        Icons.email,
                        color: Colors.white,
                      ),
                      title: TextFormField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
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
                      title: TextFormField(
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Your password',
                            suffixIcon: IconButton(
                              icon: Icon(Icons.visibility),
                              onPressed: () {},
                            ),
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
                        onPressed: () {
                          onLoginPressed();
                        },
                        child: Text(
                          'Login',
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
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            onRegisPressed();
                          },
                          child: Text(
                            'Dont Have a Account?',
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
        ],
      ),
    );
  }
}
