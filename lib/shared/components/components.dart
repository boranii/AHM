
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
Color darkblue=Color(0xff00235B);
Color brightblue = Color(0xff99b4e7);
void fun(){
  print('hello');
}
Widget defButton({
   double? width,
   double? heigth,
  required Color background,
  required Color iconcolor,
   required Function function,
  required String text,
  required IconData icon,

}) =>
    Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color:background ),
  width: 270,
  height: 60,
  child: MaterialButton(
    onPressed: (){
      function();
      },
    child: Row(
      children: [

        Icon(icon,color:iconcolor),
        SizedBox(width: 35,),
        Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.white,fontSize: 15,
          ),
        ),
      ],
    ),
  ),

);
class Slide {
  String? img;
  String? url;
  Slide({this.img, this.url});
}

class SlideImg {
  static List<Slide> slide = [
    Slide(
        img:'https://scontent.fsah2-1.fna.fbcdn.net/v/t39.30808-6/359226407_658359406334103_2450873088184248626_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=c8Xcdh8cuoAAX8Pm7wz&_nc_ht=scontent.fsah2-1.fna&oh=00_AfDLmh6WeQfvjMgbFu4N4_ec0fKqDibzM0APh4nROo4H6w&oe=64B6BA11',
        url: 'https://www.versace.com/international/en/home/'),
    Slide(
        img:
        'https://scontent.fsah2-1.fna.fbcdn.net/v/t39.30808-6/313365714_487104813459564_472329165053123978_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=zvWPlhNEhW4AX8HhkJR&_nc_ht=scontent.fsah2-1.fna&oh=00_AfB-6PAJsY-EThhkAEJaCWr9f6yDmZ-gr-3761UR35oVSg&oe=64B66A6A',
        url: 'https://www.ralphlauren.com/'),
    Slide(
        img:
        'https://scontent.fsah2-1.fna.fbcdn.net/v/t39.30808-6/358544278_658981072938603_4246128831613753900_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=Iw_8b1CNSewAX9YvBnV&_nc_ht=scontent.fsah2-1.fna&oh=00_AfAxBvz0uTK7Zc4prEsABOv1s7XqrdeIIxG8NGn9htMA5Q&oe=64B60182',
        url: 'https://www.gucci.com/us/en/'),
  ];
}
Widget Slideshow()=> CarouselSlider.builder(
itemCount: 3,
itemBuilder:
(BuildContext context, int itemIndex, int pageViewIndex) =>
SizedBox(
width: MediaQuery.of(context).size.width,
child: TextButton(
onPressed: () {
},
child: Image.network(
SlideImg.slide[itemIndex].img.toString(),
width: MediaQuery.of(context).size.width,
fit: BoxFit.fill,
),
),
),
options: CarouselOptions(
height: 200,
autoPlay: false,
enlargeCenterPage: true,
enableInfiniteScroll: true,
),
);

