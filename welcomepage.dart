import 'package:flutter/material.dart';
import 'package:loginpage/screen/components/customScaffold.dart';
import 'package:loginpage/screen/components/welcomescreenbutton.dart';
import 'package:loginpage/screen/signin_screen.dart';
import 'package:loginpage/screen/signup.dart';
class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Customscaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child:
          Container(child:
          Center(child:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: RichText(
              textAlign: TextAlign.center,
              text:const TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome Back \n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                    ),

                  ),
                  TextSpan(
                    text: 'Enter Your details to access your Account',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),


            ),
          ),

          ),
          ),
          ),
          const Flexible(
            flex: 1,
          child:Align(
            alignment: Alignment.bottomLeft,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Welcomescreenbutton(
                    welcomebutton: 'Sign up',
                    OnTap: SignupScreen(),
                    color: Colors.transparent,
                    textcolor: Colors.black,
                  ),
                ),
                  Expanded(child: Welcomescreenbutton(
                    welcomebutton: 'Sign in',
                    OnTap: SigninScreen(),
                    color: Colors.white,
                    textcolor: Colors.lightBlue,
                  ),
                  ),
            ]
            ),
          ),

    ),
    ]
    ),

    );

  }
}

