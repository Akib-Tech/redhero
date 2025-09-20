import 'package:flutter/material.dart';
import '../widgets/menu.dart';
import '../widgets/dashboard.dart';
import '../widgets/top_nav_bar.dart';
import 'bottom_slider.dart';
class HomePage extends StatelessWidget  {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
      return Scaffold(
            backgroundColor: Color(0xFFF6F6F6),
            //App Bar
            appBar:const TopNavBar(),
            //End of AppBar

          //Side Menu Bar
            drawer: Menu(),
          //End Side Menu Bar

            //Body of app
            body: BottomSlider(),

        //End of App body


        //Bottom Navigation Bar

     bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page),
              label: "Feed",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              label: "More",
            ),
          ],
        ),

        //End of Bottom Navigation Bar
);
  }

}