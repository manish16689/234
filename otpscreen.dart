import 'package:flutter/material.dart';
import 'package:loginpage/screen/forgotpassword/pinputwidget.dart';



class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 100.0),
        
            child: const Column(
              crossAxisAlignment:  CrossAxisAlignment.center,
              children: [
                Text('CO\nDE', style:
                TextStyle(
                fontSize: 80.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
        
                ),
                  textAlign: TextAlign.center,
                ),
                Text('Verification',style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700
                ),
        
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
                  child: Text('Enter your verification sent at your registered email id',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0
                    ),
                  ),
                ),
                Pinputwidget(),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}

