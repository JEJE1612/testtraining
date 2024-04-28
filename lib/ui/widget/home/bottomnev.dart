import 'package:flutter/material.dart';

Widget bottombar(
  {
    required int ?index,
    required Function(int index)  ?ontap

  }
) {
  return BottomNavigationBar(
    onTap: ontap,
    currentIndex:index! ,
    iconSize: 25,
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.grey,
    showUnselectedLabels: true,

    items: const[
      BottomNavigationBarItem(
        
        icon: Icon(Icons.home)
        ,label: 'Home',
        ), 
         BottomNavigationBarItem(
        icon: Icon(Icons.search)
        ,label: 'Explore'
        ), BottomNavigationBarItem(
        icon: Icon(Icons.car_crash_outlined)
        ,label: 'Cart'
        ), BottomNavigationBarItem(
        icon: Icon(Icons.local_offer_outlined)
        ,label: 'Offer'
        ), 
         BottomNavigationBarItem(
        icon: Icon(Icons.person)
        ,label: 'Account'
        ),
    ]);
}
