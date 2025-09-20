import 'package:flutter/material.dart';
import 'package:red_hero/pages/finder.dart';

class BottomSlider extends StatelessWidget {
  const BottomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
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
                       title:    const Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                         children: [
                  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(
              child:  Text("Mt Sinai Healthcare",style:TextStyle(fontSize:16, fontWeight: FontWeight.w600, color:Color(0xff000000))),

              ),
              Row(
              mainAxisSize: MainAxisSize.min,
              children: [

              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),

              ],
              ),

              Row(
              children: [
              Text("Blood Bank"),
              SizedBox(width:5),
              Text("14, Mile quest street...")
              ],
              ),

              ],
              ),

                           Column(
                             mainAxisSize: MainAxisSize.min,
                             mainAxisAlignment:MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 mainAxisSize:MainAxisSize.min,
                                 children: [
                                   Text("Close "),
                                   SizedBox(),
                                   Text("4AM"),
                                 ],
                               ),

                               Row(
                                 mainAxisSize:MainAxisSize.min,
                                 children: [
                                   Text("Close "),
                                   SizedBox(),
                                   Text("4AM"),
                                 ],
                               )
                             ],
                           ),
                         ],

                    ),

                      subtitle: Container(
                        margin: EdgeInsets.all(20),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Finder(),
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
                          child: Text("Donate Now"),
                        ),
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
