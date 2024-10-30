import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';


class Pinputwidget extends StatelessWidget {

  const Pinputwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(

        child: Column(

          children: [
            Pinput(
              crossAxisAlignment: CrossAxisAlignment.center,
              length: 6,
              // obscureText: true, //ye OTP ko chupne k liye h
              // obscuringWidget: Text('*'),
              keyboardType: TextInputType.number,
              validator: (value) {
                return value=='123456' ? null : 'Pin is incorrect';
              },
              onSubmitted: (value){
                print("$value Changed");
              },
              onChanged: (value){
                print('$value Changed');

              },

            ),
            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: (){
                },
                child: const Text('Validate',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}