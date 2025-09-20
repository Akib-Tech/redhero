import 'package:flutter/material.dart';
import 'package:red_hero/widgets/dashboard.dart';
class Finder extends StatelessWidget {
  const Finder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:    SafeArea(
      child: Stack(
        children: [
          // 🗺️ Replace this Container with your GoogleMap widget
          Container(
            color: Colors.blueGrey[300],
            child: const Center(
              child: Text(
                "Google Map Here",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),

          // 👇 Draggable Bottom Sheet
          DraggableScrollableSheet(
            initialChildSize: 0.25, // starts at 25% of screen
            minChildSize: 0.2, // minimum when collapsed
            maxChildSize: 0.5, // maximum when expanded
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    // small drag handle
                    Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        height: 5,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset("assets/images/hospital.png")
                    )
                    ,
                    ListTile(
                        title: Column(
                          children: [
                            ListTile(
                              leading: Image.asset("assets/images/menuImage.png"),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("Michael Jackson"),
                                  Row(
                                    children: [
                                       Text("AB"), SizedBox(width: 4,),
                                       Text("32 yrs"),SizedBox(width: 4,),
                                      Text("15 mins"),SizedBox(width: 4,),
                                    ],
                                  )
                                ],
                              ),
                            trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                              children:[
                                Icon(Icons.save),
                                SizedBox(width:5),
                                Icon(Icons.chat),
                                SizedBox(width:5),
                                Icon(Icons.report),
                              ]
                            )
                            ),
                            SizedBox(width:10),
                            ListTile(
                              title:Text("Details")
                            ),
                            SizedBox(width:10),
                            ListTile(
                              leading: Icon(Icons.location_city),
                              title: Text("Mt Sinai Hospital - 14, Oladimeji Street, Agege, Lagos State"),
                            ),
                            ListTile(
                              leading: Icon(Icons.calendar_month),
                              title: Text("22 July, 2:30 PM"),
                            ),
                            SizedBox(width:10),
                            ListTile(
                                title:Text("Time Left")
                            ),
                            SizedBox(width:10),
                            ListTile(
                              leading: Icon(Icons.alarm),
                              title: Text("01:25:37"),
                            ),

                            ListTile(
                              title: Container(
                                margin: EdgeInsets.all(20),
                                child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Dashboard(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(double.infinity, 40),
                                    backgroundColor: Color(0xffDE2828),
                                    foregroundColor: Color(0xffffffff),
                                    shape:RoundedRectangleBorder(
                                        borderRadius:BorderRadius.circular(5)
                                    ),
                                  ),
                                  child: Text("Schedule Donation"),
                                ),
                              ),
                            )
                          ],
                        )

                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      ),
    );
  }
}
