import 'package:flutter/material.dart';
import 'package:loginpage/screen/loginWidget/signinformwidget.dart';
import 'package:loginpage/screen/loginWidget/signupformwidget.dart';

import 'components/customScaffold.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Customscaffold(
      child:
      Column(
        children: [
          const Expanded(
            flex:1,
            child: SizedBox(height: 10.0,),),
          Expanded(
            flex: 7,
            child:
            Container(decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),

              child:
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0,),
                child:
                SingleChildScrollView(
                  child: Signupformwidget(),
                ),
              ),
            ),

          ),
        ],
      ) ,
    );
  }
}

