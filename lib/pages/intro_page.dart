import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:red_hero/pages/login.dart';
import '../widgets/carousel.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
          children : [
            Carousel(),
            ElevatedButton(
              onPressed: (){
                Navigator.push( context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage()
                    ) );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal:90, vertical:10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6), // smaller = less rounded
                ),
              ),
              child: Text("NEXT",style:TextStyle(color:Colors.white,fontSize:16,fontWeight: FontWeight.bold )),
            ),
            Container(
                margin: EdgeInsets.only(top:20),
                child: ElevatedButton(

                  onPressed: (){
                    if (kDebugMode) {
                      print("hi");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal:90, vertical:10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // smaller = less rounded
                    ),
                  ),
                  child: Text("SKIP",style:TextStyle(color:Colors.red,fontSize:16,fontWeight: FontWeight.bold )),
                )
            ),
       ] )
    );
  }
}