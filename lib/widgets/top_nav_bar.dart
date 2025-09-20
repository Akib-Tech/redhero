import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget implements PreferredSizeWidget{
    const TopNavBar({super.key});

    @override
  Widget build(BuildContext context) {
    return AppBar(
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
                      border: OutlineInputBorder(  ),
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
            onPressed: () {  },
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
          child: Builder(
            builder: (context)=>
                ElevatedButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer(); // 👈 this opens your Menu()
                  },
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
        ),
        SizedBox(width: 20),
      ],
    );

    }
    @override
    Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}
