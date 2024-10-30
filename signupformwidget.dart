import 'package:flutter/material.dart';

import 'package:icons_plus/icons_plus.dart';
import 'package:loginpage/screen/signin_screen.dart';

import 'package:loginpage/screen/signup.dart';

class Signupformwidget extends StatelessWidget {
  const Signupformwidget({
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
            const Text('Get started',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.abc_rounded),
                labelText: 'Full Name',
                hintText: 'Enter Full Name',
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
            const SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person_2_outlined),
                labelText: 'Username',
                hintText: 'Enter Username',
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
            const SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.phone),
                labelText: 'Phone Number',
                hintText: 'Enter Phone Number',
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
            const SizedBox(height: 15.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint),
                labelText: 'Password',
                hintText: 'Enter Password',
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
            const SizedBox(height: 15.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Sign up',
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
                Text('Sign un with',), //padding lagne se style si bn jati h
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
                const Text('Already have a Account?'),
                const SizedBox(width: 10.0,),
                GestureDetector(onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (e) => const SigninScreen(),),);
                },

                  child: const Text('Sign in',
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