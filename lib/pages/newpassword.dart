import 'package:flutter/material.dart';
import 'package:red_hero/pages/home.dart';
class Newpassword extends StatelessWidget{
  const Newpassword({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text("New Password", style: TextStyle(fontWeight: FontWeight.w900, color:Colors.black, )),
                        ),
                        SizedBox(
                            height:20
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text("Enter your new password and a confirmation password to reset your account", textAlign: TextAlign.center,  style:TextStyle(fontWeight: FontWeight.normal, color:Colors.black)),
                        ),
                        SizedBox(
                            height:20
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text("Password",  style:TextStyle(fontWeight: FontWeight.w900, color:Colors.black)),
                        ),
                        SizedBox(
                            height:10
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "*************",
                                prefixIcon: Icon(Icons.lock,size: 16,)
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text("Confirm Password",  style:TextStyle(fontWeight: FontWeight.w900, color:Colors.black)),
                        ),
                        SizedBox(
                            height:10
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "*************",
                                prefixIcon: Icon(Icons.lock,size: 16,)
                            ),
                          ),
                        ),

                        SizedBox(height: 100,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 90, vertical: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text("Save",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    )
                )
            )
        )
    );
  }

}