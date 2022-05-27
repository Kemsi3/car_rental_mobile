
import 'package:flutter/material.dart';

import 'carlist_page.dart';
import 'home_page.dart';
import 'rentlist_page.dart';


class MainPage extends StatefulWidget{
  const MainPage({Key? key}) : super(key: key);

@override
_MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  List pages = [
    CarListPage(),
    HomePage(),
    RentListPage(),

  ];
int currentIndex = 1;
  void onTap(int index)
  {
      setState((){
        currentIndex = index;
      });
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      body:pages[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: onTap,
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label:'Cars',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Home',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.list),
              label:'Rents'),
        ],
      ),
    );
  }
}