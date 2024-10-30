import 'package:flutter/material.dart';
import 'package:loginpage/screen/forgotpassword/otpscreen.dart';



class ForgotPasswordMailScreen extends StatefulWidget {
  const ForgotPasswordMailScreen({super.key});

  @override
  State<ForgotPasswordMailScreen> createState() => _ForgotPasswordMailScreenState();
}

class _ForgotPasswordMailScreenState extends State<ForgotPasswordMailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
       SafeArea(
        child: SingleChildScrollView(
          child: Container(
          
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 90.0,),
                CircleAvatar(
                  radius: 50.0,
                  child: Image.asset('images/user.png'),
                ),
                SizedBox(height: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Forgot Password',style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 5.0,),
                    const Text('Enter your e-mail to  reset your password',style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 80.0,),
              Form(
                        child:Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
          
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'E-Mail',
                                  hintText: 'Enter E-Mail',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: Colors.black12)
                                  )
          
                                ),
                              ),
                              const SizedBox(height: 20.0,),
                              SizedBox(
                                width: double.infinity,
          
                                child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.canPop(context);
                                    Navigator.push(context, MaterialPageRoute(builder: (e)=>const otpScreen(),),);
                                  },
                                    child: const Text('Next',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
          
                  ],
                )
              ],
            ) ,
          
          ),
        ),
      ),
    );
  }
}
