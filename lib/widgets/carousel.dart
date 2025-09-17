import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget{

 Carousel({super.key});

 final List<String> images = [
    "../assets/images/pana.png",
    "../assets/images/curate.png",
  ];



  @override
  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.7, // limit height

              autoPlay:true,
                enlargeCenterPage:true,
            ),

          items:  images.map(
              (url) {
                  return Container(
                      margin: EdgeInsets.only(top:20,bottom: 20),
                      child:SingleChildScrollView(
                        child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children :[
                          Image.asset(url),
                          SizedBox(height: 10),
                          RichText(
                            text : TextSpan(
                              text : "Blood Hero",
                              style : TextStyle(color:Colors.red,fontSize: 20, fontWeight: FontWeight.bold),
                              children  : <TextSpan>[
                                TextSpan(
                                    text: " Encourages",
                                    style: TextStyle(color:Colors.black,fontSize: 20, fontWeight: FontWeight.bold )
                                ),
                              ]),
                          ),
                          SizedBox(height: 4),
                          Text(" Blood Donations",style:TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold,decoration: TextDecoration.none),),
                          SizedBox(height: 14),
                          Text("Find Nearby Blood Donors and recipients Instantly",style: TextStyle(fontWeight: FontWeight.normal,color:Colors.black, fontSize: 10, decoration: TextDecoration.none)),
                          SizedBox(height: 14),
                         Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.radio_button_unchecked, size:10),
                          SizedBox(width: 8),
                          Icon(Icons.radio_button_unchecked, size:10),
                          SizedBox(width: 8),
                          Icon(Icons.radio_button_unchecked, size:10),
                          SizedBox(width: 8),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6), // 👈 0 = sharp square
                            child: Container(
                              width: 20,
                              height: 8,
                              color: Colors.red,

                              // child: Icon(Icons.star, color: Colors.white, size: 40),
                            ),)
                        ],
                      ),


                        ]
                      ),)
                  );
              }
          ).toList(),
          ),
      );
  }
}
