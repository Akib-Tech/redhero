import 'package:flutter/material.dart';

class Menu extends StatelessWidget{
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
        return Drawer(
          child:  Container(
            padding: EdgeInsets.only(top:30),
            color: Color(0xffde2828),
            child: ListView(
              children: [
                ListTile(
                  leading: ClipOval(
                    child: Image.asset("assets/images/menuImage.png", width: 60,height: 60,),
                  ) ,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Chigozie Daniel",style:TextStyle(fontSize:20, fontWeight: FontWeight.w700, color:Color(0xffFFFFFF))),
                      Text("Edit Profile",style:TextStyle(fontSize:15, fontWeight: FontWeight.w400, color:Color(0xffFFFFFF)))
                    ],
                  ),
                ),
                ListTile(
                    leading: Icon(Icons.location_searching,size: 20,color:Colors.white),
                    title: Text("Find Nearby Recipients",style:TextStyle(fontSize:16, fontWeight: FontWeight.w400, color:Color(0xffFFFFFF)) )
                ),
                ListTile(
                    leading: Icon(Icons.download,size: 20,color:Colors.white),
                    title: Text("Saved Donation",style:TextStyle(fontSize:16, fontWeight: FontWeight.w400, color:Color(0xffFFFFFF)) )
                ),
                SizedBox(height: 5,),
                ListTile(
                    leading: Icon(Icons.question_mark_rounded,size: 20,color:Colors.white),
                    title: Text("Frequently Asked Questions",style:TextStyle(fontSize:16, fontWeight: FontWeight.w400, color:Color(0xffFFFFFF)) )
                ),
                SizedBox(height: 5,),
                ListTile(
                    leading: Icon(Icons.bloodtype,size: 20,color:Colors.white),
                    title: Text("Blood Compatibility",style:TextStyle(fontSize:16, fontWeight: FontWeight.w400, color:Color(0xffFFFFFF)) )
                ),
                SizedBox(height: 5,),
                ListTile(
                    leading: Icon(Icons.work,size: 20,color:Colors.white),
                    title: Text("How It Works",style:TextStyle(fontSize:16, fontWeight: FontWeight.w400, color:Color(0xffFFFFFF)) )
                ),
                SizedBox(height: 5,),
                ListTile(
                    leading: Icon(Icons.bloodtype,size: 20,color:Colors.white),
                    title: Text("Guidelines for Donation",style:TextStyle(fontSize:16, fontWeight: FontWeight.w400, color:Color(0xffFFFFFF)) )
                ),
                SizedBox(height: 5,),
                ListTile(
                    leading: Icon(Icons.settings,size: 20,color:Colors.white),
                    title: Text("Settings",style:TextStyle(fontSize:16, fontWeight: FontWeight.w400, color:Color(0xffFFFFFF)) )
                ),
                SizedBox(height: 45,),
                ListTile(
                    leading: Icon(Icons.logout,size: 20,color:Colors.white),
                    title: Text("Log Out",style:TextStyle(fontSize:16, fontWeight: FontWeight.w400, color:Color(0xffFFFFFF)) )
                ),
              ],
            ),
          )
        );
  }

}