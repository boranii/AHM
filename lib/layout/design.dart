import 'package:flutter/material.dart';
Widget drw(){
  return Scaffold(
    body:
    Stack(

      children: [

        Expanded(
          child: Container(


            margin: EdgeInsets.symmetric(vertical: 220),
            width: 90,
            height: 90,

            decoration: BoxDecoration(color:Color(0xff00235B),borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(90.0),),),


          ),
        ),
        Expanded(
          child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90.0),),),

          ),
        ),
        Expanded(
          child: Container(

            margin:EdgeInsets.fromLTRB(0,300,0,0 ),

            decoration: BoxDecoration(color:Color(0xff00235B),borderRadius: BorderRadius.only(topRight: Radius.circular(90.0),),),
            width: double.infinity,


            child: Column(

              children: [
                SizedBox(height: 100,),




              ],
            ),),
        ),
      ],
    ),
  );
}