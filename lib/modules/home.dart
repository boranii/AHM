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
      body: Stack(

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
             child:Slideshow(),
            ),
          ),
          Expanded(
            child: Container(

              margin:EdgeInsets.fromLTRB(0,300,0,0 ),

              decoration: BoxDecoration(color:Color(0xff00235B),borderRadius: BorderRadius.only(topRight: Radius.circular(90.0),),),
              width: double.infinity,


              child: Column(

                children: [
                  SizedBox(height: 80,),
                  defButton(

                      background: Color(0xff26549e),
                      function: (){
                      },
                      text:"finance",icon: Icons.monetization_on_sharp ,iconcolor:darkblue),

                  SizedBox(height: 60,),

                  defButton(
                      background: Color(0xff99b4e7),
                      function:fun,
                      text:"rate" ,icon: Icons.star,iconcolor: darkblue),
                  SizedBox(height: 60,),
                  defButton(
                      background: Color(0xff99b4e7),
                      function: (){
                      },
                      text:"academic" ,icon: Icons.museum,iconcolor:darkblue)
                ],
              ),),
          ),
        ],
      ),



    );
  }
}
