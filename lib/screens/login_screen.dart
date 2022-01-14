import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:leat_eat/constants/colors.dart';
import 'package:leat_eat/constants/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double width = 0.0;
  double height = 0.0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Container(
          alignment: Alignment.topRight,
          child: Image.asset(
            'assets/auth/auth_corner_asset.png',
          ),
        ),
        Container(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "Welcome Back",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 50.0),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Sign in to continue",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(width * 0.05),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            label: Text("Email Id"))),
                    SizedBox(height: height * 0.02),
                    TextFormField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          label: Text("Password")),
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      width: width,
                      alignment: Alignment.topLeft,
                      child: Text("Forgot Password",
                          style: TextStyle(color: red, fontSize: 15.0)),
                    ),
                    SizedBox(height: height * 0.02),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Sign In"),
                      style: ElevatedButton.styleFrom(
                        primary: red,
                        minimumSize: Size.fromHeight(
                            50), // fromHeight use double.infinity as width and 40 is the height
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Don’t have an account?',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Sign up',
                            style: TextStyle(fontSize: 20.0, color: red),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pushNamed(registration);
                              },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'By logging in you agree to',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: '\nTerms and services, Privacy policy',
                              style: TextStyle(color: red)),
                          TextSpan(
                              text: ' and',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: ' Content policy',
                              style: TextStyle(color: red))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
