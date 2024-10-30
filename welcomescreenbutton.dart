import 'package:flutter/material.dart';
import 'package:loginpage/screen/signup.dart';



class Welcomescreenbutton extends StatelessWidget {
  const Welcomescreenbutton({super.key,  this.welcomebutton,  this.OnTap, this.color, this.textcolor});
  final  String? welcomebutton;
  final Widget? OnTap;
  final Color? color;
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (e)=>OnTap!,),);
      },
      child: Container(
      decoration:BoxDecoration(
          color: color!,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40.0),
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text( welcomebutton!,
          textAlign: TextAlign.center,

          style: TextStyle(
            color: textcolor!,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),),
      ),
          ),
    );
  }
}
