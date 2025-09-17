import 'package:flutter/material.dart';

class HomePage extends StatelessWidget  {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
      return Scaffold(
            backgroundColor: Color(0xFFF6F6F6),

            appBar: AppBar(
              automaticallyImplyLeading: false,
              titleSpacing: 20,
              title:Row (
                children: [
                  Expanded(
                      child: SizedBox(
                    width: double.infinity,
                   height: 30,
                   child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Search for blood request",
                    suffixIcon: Icon(Icons.sort,size: 16,),
                    prefixIcon: Icon(Icons.search,size:16)
                  ),
              ),
                  )
                  )
                ],
              ),
              actions: [
              SizedBox(
                width: 30,
              height: 30,
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF6F6F6),
                      padding: EdgeInsets.all((0)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3), // smaller = less rounded
                      ),
                    ),
                    child:  Icon(Icons.scanner, size:20,color: Color(0xffDE2828),),
                  ),
              ),
                 SizedBox(width: 20),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF6F6F6),
                      padding: EdgeInsets.all((0)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3), // smaller = less rounded
                      ),
                    ),
                    child:  Icon(Icons.notifications_active, size:20,color: Color(0xffDE2828),),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF6F6F6),
                      padding: EdgeInsets.all((0)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    child:  Icon(Icons.menu, size:20,color: Color(0xffDE2828),),
                  ),
                ),
                SizedBox(width: 20),
              ],


            ),
            body: SafeArea(

                child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                    //Page Column
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //Announcement Container
                       Container(
                          padding: EdgeInsets.all(5),
                           decoration:BoxDecoration(
                               color: Color(0xffE9EFFF),
                               border: Border.all(
                                 color:Color(0xffA1BDFF),
                                 width:1,
                               ),
                               borderRadius: BorderRadius.circular(4)
                           ),
                           child: Column(
                           children: [
                        Padding(
                            padding:EdgeInsets.only(left:10),

                         child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Announcement", style: TextStyle(color:Color(0xff004CFF)),),
                              ),
                        ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child:Text("We just updated our policy. following the publication made by the European Union and World Health Organization...",softWrap: true,)
                                ) ),
                                Container(
                                padding: EdgeInsets.only(right:10),
                               child: Icon(
                                  Icons.navigate_next,
                                  size: 30,
                                   color:Color(0xff004CFF)
                                ) ),
                            ],
                          )
                           ],

                         )
                       ),
                  //Announcement Container

                    SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerLeft,
                  child: Text("Hello Chigozie",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
                  ),

                        SizedBox(height: 10,),

                  //Balance Information

                    Container(
                      padding: EdgeInsets.all(15),
                      decoration:BoxDecoration(
                          color: Color(0xff222222),
                          border: Border.all(
                            color:Color(0xff222222),
                            width:1,
                          ),
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child:Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("Available Balance",style: TextStyle(color:Color(0xffFFFFFF))),
                                  Icon(Icons.hide_image, size:16, color:Color(0xffffffff))
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Transaction History",style: TextStyle(color:Color(0xffFFFFFF))),
                                  Icon(Icons.navigate_next, size:16, color:Color(0xffffffff))
                                ],
                              )
                            ],
                          ),

                          SizedBox(height:20),

                          Align(
                            alignment: Alignment.centerLeft,
                            child:Text("#150,000", style:TextStyle(color:Color(0xffffffff),fontSize: 32, fontWeight: FontWeight.w500))
                          ),

                        ],
                      ),
                    ),


                  //Balance Information


                  //Fund and Withdrawal
                        SizedBox(height:20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              SizedBox(

                                  child: ElevatedButton(
                                      onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(3)
                                        ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Row(
                                          children: [
                                            Text("Fund Wallet",
                                                style:TextStyle(color:Color(0xffde2828),
                                                    fontSize: 12, fontWeight: FontWeight.w400,

                                                  )
                                                ,
                                                ),

                                            SizedBox(width:5),
                                            Icon(Icons.card_membership, size:12, color:Color(0xffde2828),)
                                          ],
                                        ),
                                      )
                                  )
                              ),

                              SizedBox(
                                  child: ElevatedButton(
                                      onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(3)
                                        ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Row(
                                          children: [
                                            Text("Withdraw",
                                              style:TextStyle(color:Color(0xffde2828),
                                                fontSize: 12, fontWeight: FontWeight.w400,

                                              )
                                              ,
                                            ),

                                            SizedBox(width:5),
                                            Icon(Icons.card_membership, size:12, color:Color(0xffde2828),)
                                          ],
                                        ),
                                      )
                                  )
                              )
                            ]
                        ),


                    //Fund and Withdrawal

                    //Activities Panel
                        SizedBox(height:40),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          child:Column(
                            children: [
                              //First Activity Row
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                  Expanded(
                                 child: Container(
                                   margin: const EdgeInsets.all(4),
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffFFF0EE),
                                        width:2
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: InkWell(
                                    onTap: () {},
                                    borderRadius: BorderRadius.circular(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.send, color: Color(0xffDE2828), size: 30),
                                        SizedBox(height:10),
                                        Text("Find Nearby Recipients",textAlign: TextAlign.center,),

                                      ],
                                    ),
                                  ),
                                  ),
                                  ),

                                  Expanded(
                                 child: Container(
                                   margin: const EdgeInsets.all(4),
                                   padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xffFFF0EE),
                                          width:2
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: InkWell(
                                      onTap: () {},
                                      borderRadius: BorderRadius.circular(8),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.emergency, color: Color(0xffDE2828), size: 30),
                                          SizedBox(height:10),
                                          Text("Emergency Request",textAlign: TextAlign.center,),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ),

                                  Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.all(4),
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xffFFF0EE),
                                          width:2
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: InkWell(
                                      onTap: () {},
                                      borderRadius: BorderRadius.circular(8),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.calendar_month_rounded, color: Color(0xffDE2828), size: 30),
                                          SizedBox(height:10),
                                          Text("Schedule Donations",textAlign: TextAlign.center,),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ),

                                  Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.all(4),
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xffFFF0EE),
                                          width:2
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: InkWell(
                                      onTap: () {},
                                      borderRadius: BorderRadius.circular(8),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.bluetooth_connected, color: Color(0xffDE2828), size: 30),
                                          SizedBox(height:10),
                                          Text("Auto Matching",textAlign: TextAlign.center,),

                                        ],
                                      ),
                                    ),
                                  ),
                                  ),
                                ],
                              ),

                            //End First Activity Row
                              SizedBox(height: 40),
                              //Second Activity Row
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.all(4),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffFFF0EE),
                                            width:2
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(8),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.send, color: Color(0xffDE2828), size: 30),
                                            SizedBox(height:10),
                                            Text("Find Nearby Recipients",textAlign: TextAlign.center,),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.all(4),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffFFF0EE),
                                            width:2
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(8),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.emergency, color: Color(0xffDE2828), size: 30),
                                            SizedBox(height:10),
                                            Text("Emergency Request",textAlign: TextAlign.center,),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.all(4),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffFFF0EE),
                                            width:2
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(8),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.calendar_month_rounded, color: Color(0xffDE2828), size: 30),
                                            SizedBox(height:10),
                                            Text("Schedule Donations",textAlign: TextAlign.center,),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.all(4),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffFFF0EE),
                                            width:2
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(8),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.bluetooth_connected, color: Color(0xffDE2828), size: 30),
                                            SizedBox(height:10),
                                            Text("Auto Matching",textAlign: TextAlign.center,),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              //End Second Activity Row
                            ],
                          )
                        ),

                    //End Activities Panel

                    //Tracking Donor

                        Container(
                            padding: EdgeInsets.all(5),
                            decoration:BoxDecoration(
                                color: Color(0xffE9EFFF),
                                border: Border.all(
                                  color:Color(0xffA1BDFF),
                                  width:1,
                                ),
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:EdgeInsets.only(left:10),

                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Announcement", style: TextStyle(color:Color(0xff004CFF)),),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child:Text("We just updated our policy. following the publication made by the European Union and World Health Organization...",softWrap: true,)
                                        ) ),
                                    Container(
                                        padding: EdgeInsets.only(right:10),
                                        child: Icon(
                                            Icons.navigate_next,
                                            size: 30,
                                            color:Color(0xff004CFF)
                                        ) ),
                                  ],
                                )
                              ],

                            )
                        ),

                    //End Tracking Donor
                      ],
                    ),
                      //Page Column

                    ),
                )
            )
      );
  }

}