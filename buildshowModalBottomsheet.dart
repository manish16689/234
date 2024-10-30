import 'package:flutter/material.dart';
import 'package:loginpage/screen/forgotpassword/headerforverification/forgotpasswordmail.dart';

import '../../signup.dart';
import '../headerforverification/forgotpasswordphone.dart';
import 'bottomshow.dart';


class ForgotpasswordScreen{
 static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context)=>Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,

        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Make Selection',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            const SizedBox(height: 5.0),
            const Text('Select one of the options given below to reset your password',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 15.0),
            bottomwidget(
              btnIcon: Icons.email_outlined,

              btnText: 'E-Mail',
              btnsubText: 'Reset via E-Mail verification',
              Ontap:()  {
                Navigator.pop(context);
                Navigator.push(context,

                  MaterialPageRoute(builder: (e) => const ForgotPasswordMailScreen(),),);
              },
            ),
            const SizedBox(height: 15.0),
            bottomwidget(
              btnIcon: Icons.mobile_friendly_rounded,
              btnText: 'Phone Number',
              btnsubText: 'Reset via Phone Number verification',
              Ontap: (){
                Navigator.pop(context);
                Navigator.push(context,
                  MaterialPageRoute(builder: (e)=>const Forgotpasswordphone(),),);
              },
            ),
          ],
        ),
      ),
    );
  }
}