import 'package:flutter/material.dart';



class bottomwidget extends StatelessWidget {
  final IconData? btnIcon;
  final String? btnText;
  final String? btnsubText;
  final  Ontap;


  const bottomwidget({


    super.key,  this.btnIcon,  this.btnText,  this.btnsubText, this.Ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:Ontap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(10.0),

        ),
        child: Row(
          children: [
            Icon(btnIcon,size: 50.0,),
            const SizedBox(width: 15.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(btnText!, style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.bold),),
                Text(btnsubText!, style: TextStyle(
                  fontSize: 12.0,

                ),),
              ],
            ),
          ],

        ),
      ),
    );
  }
}