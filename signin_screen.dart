import 'package:flutter/material.dart';
import 'package:loginpage/screen/components/customScaffold.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:loginpage/screen/loginWidget/signinformwidget.dart';
import 'package:loginpage/screen/signup.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
                        child: Signinformwidget(),
                      ),
                    ),
                  ),

              ),
            ],
          ) ,
    );
  }
}




