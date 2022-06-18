import 'package:coffeeui/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:coffeeui/login_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/loginbg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50.0,
                    width: 100.0,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "GC Coffee",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    "The Best",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.only(top: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffFDB94E),
                        ),
                        child: Center(
                          child: FlatButton(
                            child: Text(
                              "Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              );
                            },
                            // onPressed: (){} => Navigator.push(
                            //   context,
                            //   CupertinoPageRoute(
                            //     builder: (context) => HomeScreen(),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        padding: EdgeInsets.only(top: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Color(0xffFDB94E))),
                        child: Center(
                          child: FlatButton(
                            child: Text(
                              "Register",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SignInButton(
                        Buttons.Google,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        text: "Sign up with Google",
                        onPressed: () {},
                      ),
                      SizedBox(height: 15.0),
                      SignInButton(
                        Buttons.Facebook,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        text: "Sign up with Facebook",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Expanded(
                    child: Image.asset("assets/images/LoginCoffee.png"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
