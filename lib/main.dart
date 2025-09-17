import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color:Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home : HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{ 
   const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
       body : Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,),
             
            ),
            child: GestureDetector(  
            child:   Center(
              child : Image.asset("assets/images/logo.png")
            ),
             onTap : (){
              Navigator.push( context,
              MaterialPageRoute(
                builder: (context) => IntroPage()
                ) );
                 } ),
            
 
       )
          );

  }

}

