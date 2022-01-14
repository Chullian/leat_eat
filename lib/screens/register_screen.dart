import 'package:flutter/material.dart';
import 'package:leat_eat/constants/colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  double width = 0.0;
  double height = 0.0;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return red;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            'assets/auth/auth_background.png',
          ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Welcome Back",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 50.0),
                    ),
                    Text(
                      "It’s great to see you",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    Card(
                      margin: EdgeInsets.only(
                        left: width * 0.05,
                        right: width * 0.05,
                        top: height * 0.03,
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 20.0, right: 20.0, bottom: 40.0),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  border: UnderlineInputBorder(),
                                  label: Text("Full Name")),
                            ),
                            SizedBox(height: height * 0.02),
                            TextFormField(
                              decoration: const InputDecoration(
                                  border: UnderlineInputBorder(),
                                  label: Text("Email Address")),
                            ),
                            SizedBox(height: height * 0.02),
                            TextFormField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  label: Text("Phone Number")),
                            ),
                            SizedBox(height: height * 0.02),
                            TextFormField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  label: Text("Password")),
                            ),
                            SizedBox(height: height * 0.02),
                            TextFormField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  label: Text("Retype Password")),
                            ),
                            SizedBox(height: height * 0.02),
                            Container(
                              width: width - (width * 0.1),
                              child: Row(children: [
                                Transform.scale(
                                  scale: 1.8,
                                  child: Checkbox(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(2.0)),
                                    checkColor: Colors.white,
                                    fillColor:
                                        MaterialStateProperty.resolveWith(
                                            getColor),
                                    value: this.value,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        this.value = value!;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Flexible(
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'I agree to ',
                                      style: TextStyle(color: Colors.black),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                'Terms and services, Privacy policy',
                                            style: TextStyle(color: red)),
                                        TextSpan(
                                            text: ' and',
                                            style:
                                                TextStyle(color: Colors.black)),
                                        TextSpan(
                                            text: ' Content policy',
                                            style: TextStyle(color: red))
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ])),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: height * 0.186),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("SIGN UP",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 30.0)),
              style: ElevatedButton.styleFrom(
                primary: red,
                minimumSize: Size(width * 0.7,
                    50.0), // fromHeight use double.infinity as width and 40 is the height
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/auth/auth_corner_pizza.png',
            ),
          ),
        ],
      ),
    );
  }
}
