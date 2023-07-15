import 'package:ahn/shared/components/components.dart';
import 'package:flutter/material.dart';

import 'modules/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:drw(),
    );
  }
}
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
              child: Slideshow()
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
                defButton(

                    background: Color(0xff26549e),
                    function: (){
                    },
                    text:"finance",icon: Icon(Icons.monetization_on_sharp,color: Color(0xff00235B)) ),

                SizedBox(height: 60,),

                defButton(
                    background: Color(0xff99b4e7),
                    function: (){

                    },
                    text:"rate" ,icon: Icon(Icons.star,color: Color(0xff26549e))),
                SizedBox(height: 60,),
                defButton(
                    background: Color(0xff99b4e7),
                    function: (){
                    },
                    text:"academic" ,icon: Icon(Icons.museum,color: Color(0xff26549e) ,))
              ],
            ),),
        ),
      ],
    ),
  );
}