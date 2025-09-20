import 'package:flutter/material.dart';
import 'package:red_hero/pages/bottom_slider.dart';
import 'package:red_hero/widgets/top_nav_bar.dart';
import 'package:red_hero/widgets/bottom_stick_bar.dart';
import 'package:red_hero/widgets/menu.dart';

class Dashboard extends StatelessWidget{
   const Dashboard({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold (
      //App Bar
        appBar:const TopNavBar(),
        //End of AppBar

        //Side Menu Bar
        drawer: Menu(),
        //End Side Menu Bar

     body: SingleChildScrollView(
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
                      borderRadius: BorderRadius.circular(15)
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
                                  onTap: () {
                                    Navigator.push(context,MaterialPageRoute( builder :(context) => BottomSlider() ) );
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.send, color: Color(0xffDE2828), size: 30),
                                      SizedBox(height:10),
                                      Text("Find Nearby Recipients",textAlign: TextAlign.center,style: TextStyle(fontSize: 12),),

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
                                      Text("Emergency Request",textAlign: TextAlign.center,style: TextStyle(fontSize: 12),),
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
                                      Text("Schedule Donations",textAlign: TextAlign.center,style: TextStyle(fontSize: 12),),
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
                                      Text("Auto Matching",textAlign: TextAlign.center,style: TextStyle(fontSize: 12),),

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
                                      Text("Find Nearby Recipients",textAlign: TextAlign.center,style: TextStyle(fontSize: 12),),

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
                                      Text("Emergency Request",textAlign: TextAlign.center,style: TextStyle(fontSize: 12),),
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
                                      Text("Schedule Donations",textAlign: TextAlign.center,style: TextStyle(fontSize: 12),),
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
                                      Text("Auto Matching",textAlign: TextAlign.center,style: TextStyle(fontSize: 12),),

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
                SizedBox(height:20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Track My Donor", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color:Color(0xff202020))),
                ),

                SizedBox(height:20),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration:BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(
                        color:Color(0xffffffff),
                        width:1,
                      ),
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Image.asset("../assets/images/map.png",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width:10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Michael Jordan",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                          SizedBox(height:3),
                          Text("Lagos State Specialist Hospital",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),


                          SizedBox(height:20),
                          Text("Estimating Arrival Time",style:TextStyle(fontSize: 8,fontWeight: FontWeight.w400, color:Color(0xffde2828))),
                          SizedBox(height:3),
                          Text("25:00 mins",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w600, color:Color(0xffde2828))),
                        ],
                      )
                    ],
                  ),

                ),

                //End Tracking Donor


                //Blood Group Needed

                SizedBox(height:20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Blood Group Needed", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color:Color(0xff202020))),
                ),
                SizedBox(height:20),


                Container(
                  padding: EdgeInsets.all(5),
                  decoration:BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(
                        color:Color(0xffffffff),
                        width:1,
                      ),
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child:   Row(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Blood Group Row
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 0),
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
                                    child:Icon(Icons.bluetooth_connected, color: Color(0xffDE2828), size: 20),

                                  ),
                                ),
                              ),


                              Expanded(
                                child:  Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 0),
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
                                    child: Icon(Icons.bluetooth_connected, color: Color(0xffDE2828), size: 20),

                                  ),
                                ),
                              ),

                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 0),
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
                                    child:Icon(Icons.bluetooth_connected, color: Color(0xffDE2828), size: 20),
                                  ),
                                ),
                              ),

                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(0xffFFF0EE),
                                        width:2
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: InkWell(
                                    onTap: () {},
                                    borderRadius: BorderRadius.circular(4),
                                    child:
                                    Icon(Icons.bluetooth_connected, color: Color(0xffDE2828), size: 20),
                                  ),
                                ),
                              ),


                              //Blood Group row


                            ],
                          ),
                        ),
                      ),
                    ],

                  ),

                ),

                //Blood Group Needed


                //Blood Request

                SizedBox(height:20),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      SizedBox(
                        child: Text("Request",style:TextStyle(fontWeight:FontWeight.w600 ,fontSize: 14)),
                      ),

                      SizedBox(
                        child: Text("See all",style:TextStyle(color:Color(0xff004CFF),fontSize: 10,fontWeight:FontWeight.w600)),
                      ),
                    ]
                ),
                //End of Blood Request


                //Request Panel

                SizedBox(height:20),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration:BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(
                        color:Color(0xffffffff),
                        width:1,
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child:Column(
                      children:[
                        //First Row for Request
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            //Profile Image Column
                            Container(
                              margin: EdgeInsets.all(0),
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: ClipOval(
                                child: Image.asset("../assets/images/map.png",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //End of Profile Image Colum
                            SizedBox(width:10),

                            //Profile Details
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      children:[
                                        Text("Michael Jordan",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                        SizedBox(width:5),
                                        Container(
                                          decoration: BoxDecoration(
                                            color:Color(0xffFFE2E2),
                                            border: Border.all(
                                                color: Color(0xffFFE2E2),
                                                width:2
                                            ),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Text("Emergency",style: TextStyle(color:Color(0xffDE2828), fontSize: 8,fontWeight: FontWeight.w400),),
                                        )
                                      ]
                                  ),
                                  SizedBox(height:3),
                                  Text("Lagos State Specialist Hospital Allen avenue Lagos",softWrap: true,overflow: TextOverflow.ellipsis,
                                    maxLines: 2,style:TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),

                                  SizedBox(height:8),
                                  Row(
                                    children: [
                                      Text("0+",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w600, color:Color(0xffde2828))),
                                      SizedBox(width:4),
                                      Text("15:00 mins ago",style:TextStyle(fontSize: 10,fontWeight: FontWeight.w400, color:Color(0xff6B6B6B))),
                                      SizedBox(width:4),
                                      Text("15/06/2025",style:TextStyle(fontSize: 10,fontWeight: FontWeight.w400, color:Color(0xff6B6B6B))),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            //End of Profile Details

                            SizedBox(width:10),

                            //Timer and Fee
                            Column(
                              children: [
                                Text("Time Left",style:TextStyle(fontSize: 6,fontWeight: FontWeight.w400),),
                                SizedBox(height:3),
                                Text("05:21:15",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color:Color(0xffde2828))),


                                SizedBox(height:20),
                                Text("Plasma Blood",style:TextStyle(fontSize: 6,fontWeight: FontWeight.w400, color:Color(0xffde2828))),
                                SizedBox(height:3),
                                Text("#25,000",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w700, color:Color(0xffde2828))),
                              ],
                            ),
                            //Timer and Fee

                          ],
                        ),

                        //End of First Row for Request


                        //Second Row for Request

                        SizedBox(height:10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:Color(0xffCA2929),
                                  foregroundColor: Color(0xffffffff),
                                  shape:RoundedRectangleBorder(
                                      borderRadius:BorderRadius.circular(5)
                                  )
                              ),
                              child: Text("Decline",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            ),

                            SizedBox(width:50),
                            ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:Color(0xff4AC11F),
                                  foregroundColor: Color(0xffffffff),
                                  shape:RoundedRectangleBorder(
                                      borderRadius:BorderRadius.circular(5)
                                  )
                              ),
                              child: Text("Accept",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
                            ),
                          ],
                        )


                        //End of Second Row for Request

                      ]
                  ),


                ),
                //End of Request Panel




                //Carousel Here

                //End of Carousel here



                //Second Request Panel

                SizedBox(height:20),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      SizedBox(
                        child: Text("Request",style:TextStyle(fontWeight:FontWeight.w600 ,fontSize: 14)),
                      ),

                      SizedBox(
                        child: Text("See all",style:TextStyle(color:Color(0xff004CFF),fontSize: 10,fontWeight:FontWeight.w600)),
                      ),
                    ]
                ),

                SizedBox(height:20),

                Container(
                  padding: EdgeInsets.all(5),
                  decoration:BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(
                        color:Color(0xffffffff),
                        width:1,
                      ),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Column(
                      children:[
                        //First User Request
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            //Profile Image Column
                            Container(
                              margin: EdgeInsets.all(0),
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              child: Image.asset("../assets/images/map.png",
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),

                            ),

                            //End of Profile Image Colum
                            SizedBox(width:10),

                            //Profile Details
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      children:[
                                        Text("Michael Jordan",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                        SizedBox(width:5),
                                        Container(
                                          decoration: BoxDecoration(
                                            color:Color(0xffFFE2E2),
                                            border: Border.all(
                                                color: Color(0xffFFE2E2),
                                                width:2
                                            ),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Text("Emergency",style: TextStyle(color:Color(0xffDE2828), fontSize: 8,fontWeight: FontWeight.w400),),
                                        )
                                      ]
                                  ),
                                  SizedBox(height:8),
                                  Row(
                                    children: [
                                      Text("0+ Needed",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w600, color:Color(0xffde2828))),
                                      SizedBox(width:10),
                                      Text("15:00 mins ago",style:TextStyle(fontSize: 10,fontWeight: FontWeight.w400, color:Color(0xff6B6B6B))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            //End of Profile Details

                            SizedBox(width:10),

                            //Timer and Date
                            Column(
                              children: [
                                Text("Time Left",style:TextStyle(fontSize: 6,fontWeight: FontWeight.w400),),
                                SizedBox(height:15),
                                Text("05:21:15",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color:Color(0xffde2828))),
                              ],
                            ),
                            //Timer and Date

                          ],
                        ),

                        Divider(
                          thickness: 1,
                          color: Color(0xffE0E0E0),
                        ),

                        //End of First User request


                        //Second User Request
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            //Profile Image Column
                            Container(
                              margin: EdgeInsets.all(0),
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              child: Image.asset("../assets/images/map.png",
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),

                            ),

                            //End of Profile Image Colum
                            SizedBox(width:10),

                            //Profile Details
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      children:[
                                        Text("Michael Jordan",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                        SizedBox(width:5),
                                        Container(
                                          decoration: BoxDecoration(
                                            color:Color(0xffFFE2E2),
                                            border: Border.all(
                                                color: Color(0xffFFE2E2),
                                                width:2
                                            ),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Text("Emergency",style: TextStyle(color:Color(0xffDE2828), fontSize: 8,fontWeight: FontWeight.w400),),
                                        )
                                      ]
                                  ),
                                  SizedBox(height:8),
                                  Row(
                                    children: [
                                      Text("0+ Needed",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w600, color:Color(0xffde2828))),
                                      SizedBox(width:10),
                                      Text("15:00 mins ago",style:TextStyle(fontSize: 10,fontWeight: FontWeight.w400, color:Color(0xff6B6B6B))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            //End of Profile Details

                            SizedBox(width:10),

                            //Timer and Date
                            Column(
                              children: [
                                Text("Time Left",style:TextStyle(fontSize: 6,fontWeight: FontWeight.w400),),
                                SizedBox(height:15),
                                Text("05:21:15",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color:Color(0xffde2828))),
                              ],
                            ),
                            //Timer and Date

                          ],
                        ),

                        Divider(
                          thickness: 1,
                          color: Color(0xffE0E0E0),
                        ),

                        //End of Second User Request

                        //Third User Request
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            //Profile Image Column
                            Container(
                              margin: EdgeInsets.all(0),
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              child: Image.asset("../assets/images/map.png",
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),

                            ),

                            //End of Profile Image Colum
                            SizedBox(width:10),

                            //Profile Details
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      children:[
                                        Text("Michael Jordan",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                        SizedBox(width:5),
                                        Container(
                                          decoration: BoxDecoration(
                                            color:Color(0xffFFE2E2),
                                            border: Border.all(
                                                color: Color(0xffFFE2E2),
                                                width:2
                                            ),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Text("Emergency",style: TextStyle(color:Color(0xffDE2828), fontSize: 8,fontWeight: FontWeight.w400),),
                                        )
                                      ]
                                  ),
                                  SizedBox(height:8),
                                  Row(
                                    children: [
                                      Text("0+ Needed",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w600, color:Color(0xffde2828))),
                                      SizedBox(width:10),
                                      Text("15:00 mins ago",style:TextStyle(fontSize: 10,fontWeight: FontWeight.w400, color:Color(0xff6B6B6B))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            //End of Profile Details

                            SizedBox(width:10),

                            //Timer and Date
                            Column(
                              children: [
                                Text("Time Left",style:TextStyle(fontSize: 6,fontWeight: FontWeight.w400),),
                                SizedBox(height:15),
                                Text("05:21:15",style:TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color:Color(0xffde2828))),
                              ],
                            ),
                            //Timer and Date

                          ],
                        ),

                        Divider(
                          thickness: 1,
                          color: Color(0xffE0E0E0),
                        ),

                        //End of Third User Request

                      ]
                  ),

                ),

                //End of Second Request Panel

                //Campaigns Panel


                SizedBox(height:20),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      SizedBox(
                        child: Text("Campaigns",style:TextStyle(fontWeight:FontWeight.w600 ,fontSize: 14)),
                      ),
                    ]
                ),
                SizedBox(height:20),

                Container(
                  padding: EdgeInsets.all(5),
                  decoration:BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(
                        color:Color(0xffffffff),
                        width:1,
                      ),
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset("../assets/images/donate.png",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width:20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                children:[
                                  Text("Baby & Me",style:TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                                  SizedBox(width:5),
                                  Text("11/07/2025",style: TextStyle( fontSize: 10,fontWeight: FontWeight.w400),),
                                ]
                            ),
                            SizedBox(height:3),
                            Text("Donate Blood and Save a Life" ,style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                            SizedBox(height:5),
                            ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.infinity, 40),
                                backgroundColor: Color(0xffDE2828),
                                foregroundColor: Color(0xffffffff),
                                shape:RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(5)
                                ),
                              ),
                              child: Text("Register"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),



                //End of Campaign Panel

                //News Article

                SizedBox(height:20),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      SizedBox(
                        child: Text("News Articles",style:TextStyle(fontWeight:FontWeight.w600 ,fontSize: 14)),
                      ),
                    ]
                ),

                SizedBox(height:20),

                Container(
                  padding: EdgeInsets.all(5),
                  decoration:BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border.all(
                        color:Color(0xffffffff),
                        width:1,
                      ),
                      borderRadius: BorderRadius.circular(4)
                  ),

                  child:Column(

                      children: [

                        //First News
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color:Color(0xffDEFFDE),
                                      border: Border.all(
                                          color: Color(0xffDEFFDE),
                                          width:2
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text("Health",style: TextStyle(color:Color(0xff50A850), fontSize: 8,fontWeight: FontWeight.w400),),
                                  ),
                                  SizedBox(height:3),
                                  Text("Why You Need To Donate Blood" ,style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                  SizedBox(height:20),
                                  SizedBox(
                                    child: Text("Read Article",style:TextStyle(color:Color(0xff004CFF),fontSize: 12,fontWeight:FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),

                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset("../assets/images/giveBlood.png",
                                width: 180,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),

                          ],
                        ), Divider(
                          thickness: 1,
                          color: Color(0xffE0E0E0),
                        ),

                        //End of First News


                        //Second News

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color:Color(0xffDEFFDE),
                                      border: Border.all(
                                          color: Color(0xffDEFFDE),
                                          width:2
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text("Health",style: TextStyle(color:Color(0xff50A850), fontSize: 8,fontWeight: FontWeight.w400),),
                                  ),
                                  SizedBox(height:3),
                                  Text("Why You Need To Donate Blood" ,style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                  SizedBox(height:20),
                                  SizedBox(
                                    child: Text("Read Article",style:TextStyle(color:Color(0xff004CFF),fontSize: 12,fontWeight:FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset("../assets/images/giveBlood.png",
                                width: 180,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),

                          ],
                        ), Divider(
                          thickness: 1,
                          color: Color(0xffE0E0E0),
                        ),


                        //End Of second News


                      ]),

                ),
                //End of News Article


              ],
            ),
            //Page Column

          ),
                ),

        bottomNavigationBar:NavBarExample()

        );
  }
}
