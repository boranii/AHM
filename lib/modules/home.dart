import 'package:ahn/layout/drawer.dart';
import 'package:flutter/material.dart';

import '../shared/components/components.dart';
class Homee extends StatefulWidget {
  const Homee({Key? key}) : super(key: key);

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color:Color(0xff26549e) ),
        backgroundColor: Color(0xffffffff),
        title: Text("Hompage",style: TextStyle(color: Color(0xff00235B)),),
        centerTitle: true,

      ),
      drawer: Drawer(


      ),
      body:SingleChildScrollView(
        child: Stack(

          children: [

            Container(
              margin: EdgeInsets.symmetric(vertical: 170),
              width: 90,
              height: 90,

              decoration: BoxDecoration(color:Color(0xff00235B),borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(90.0),),),


            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0),
              child: Column(
                children: [
                  Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90.0),),),
                      child: Slideshow()
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 250),

              child: Column(

                children: [
                Container(


                  decoration: BoxDecoration(color:Color(0xff00235B),borderRadius: BorderRadius.only(topRight: Radius.circular(90.0),),),
                  width: double.infinity,
                  height: 630,

                  child: Column(

                    children: [
                      SizedBox(height: 60,),
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
        ],),
            ),
          ],
        ),
      ),



    );
  }
}
