import 'package:flutter/material.dart';
import 'package:trainningtest/ui/widget/home/aboutus.dart';
import 'package:trainningtest/ui/widget/home/bottomnev.dart';
import 'package:trainningtest/ui/widget/home/homelists/Gridlist.dart';
import 'package:trainningtest/ui/widget/home/homelists/categorieslist.dart';
import 'package:trainningtest/ui/widget/home/homelists/populerlist.dart';
import 'package:trainningtest/ui/widget/home/homeslider.dart';
import 'package:trainningtest/ui/widget/home/text_field_search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFieldSearch(
          Keyboardtype: TextInputType.none,
          icon: Icons.search,
          hintText: 'search',
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: Icon(Icons.settings_input_composite_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_active)),
        ],
      ),
      bottomNavigationBar: bottombar(
          index: currentIndex,
          ontap: (int index) {
            setState(() {
              currentIndex = index;
            });
          }),
      body: SafeArea(
        child: ListView(scrollDirection: Axis.vertical, children: [
          const SizedBox(
            height: 20,
          ),
          HomeSlider(),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  "View all",
                  style: TextStyle(fontSize: 18, color: Colors.amber),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                  child: const CategoriesList())),
          const Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 18, color: Colors.amber),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: const PopulerList())),
          const Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Text(
                  "About Us",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ],
            ),
          ),
          const AboutusContent(),
          const Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Row(
              children: [
                Text(
                  "Most Popular For Women",
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "See More ",
                  style: TextStyle(fontSize: 18, color: Colors.amber),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: const PopulerList())),
          const Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Row(
              children: [
                Text(
                  "Most Popular For men",
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  "See more",
                  style: TextStyle(fontSize: 18, color: Colors.amber),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: const PopulerList())),
          const Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Hot Deal",
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  "See more",
                  style: TextStyle(fontSize: 18, color: Colors.amber),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height - 60,
                  child: const GridList())),
        ]),
      ),
    );
  }
}
