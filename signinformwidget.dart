import 'package:flutter/material.dart';

import 'package:icons_plus/icons_plus.dart';
import 'package:loginpage/screen/forgotpassword/bottomscreen/bottomshow.dart';
import 'package:loginpage/screen/forgotpassword/bottomscreen/buildshowModalBottomsheet.dart';
import 'package:loginpage/screen/forgotpassword/headerforverification/forgotpasswordphone.dart';

import 'package:loginpage/screen/signup.dart';

class Signinformwidget extends StatelessWidget {
  const Signinformwidget({
    super.key,
  });
//ye pura widget wo h ,jisme sab likh rakhya h login screen ka
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(

          children: [
            const Text('Welcome Back',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person_2_outlined),
                labelText: 'Username',
                hintText: 'Username',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black45,)

                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black12, // Default border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

            ),
            const SizedBox(height: 15.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint),
                labelText: 'Password',
                hintText: 'Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black45,)

                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black12, // Default border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),

              ),

            ),
            const SizedBox(height: 0.0),
            Align(alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgotpasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: const Text('Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),)
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('LOGIN',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            const Row( //do divider k bich likhne se hi text bich mein aayega ye
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1.0,
                    color: Colors.grey,

                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),),
                Text('Sign in with',), //padding lagne se style si bn jati h
                Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),),

                Expanded(child: Divider(thickness: 1.0,),),

              ],
            ),
            const SizedBox(height: 30.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Logo(Logos.facebook_f),
                Logo(Logos.twitter),
                Logo(Logos.google),
                Logo(Logos.apple),
              ],
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have a Account?'),
                const SizedBox(width: 10.0,),
                GestureDetector(onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (e) => const SignupScreen(),),);
                },

                  child: const Text('Sign up',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }


}

