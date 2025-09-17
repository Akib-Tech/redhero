import 'package:flutter/material.dart';
import 'package:red_hero/pages/newpassword.dart';
class ForgetPassword extends StatelessWidget{
  const ForgetPassword({super.key});


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
                        child: Text("Forget Password", style: TextStyle(fontWeight: FontWeight.w900, color:Colors.black, )),
                      ),
                      SizedBox(
                        height:20
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text("Enter your email and we will send you a link to reset your password", textAlign: TextAlign.center,  style:TextStyle(fontWeight: FontWeight.normal, color:Colors.black)),
                      ),
                      SizedBox(
                        height:20
                      ),
                      Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text("Email Address",  style:TextStyle(fontWeight: FontWeight.w900, color:Colors.black)),
                      ),
                      SizedBox(
                        height:10
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Enter your Email",
                            prefixIcon: Icon(Icons.email,size: 16,)
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("Did you get a link?", style: TextStyle(fontSize: 16),),
                          Text(" Resend Link", style: TextStyle(color:Colors.red, fontWeight: FontWeight.w900, fontSize: 16),)
                        ],
                      ),
                      ),
                      SizedBox(height: 170,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Newpassword(),
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
                              Text("Send",
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