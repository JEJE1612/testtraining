import 'package:flutter/material.dart';
import 'package:trainningtest/ui/widget/home/widgets/Hotdealcontent.dart';

class GridList extends StatelessWidget {
  const GridList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, i) {
          return HotDealcontent();
        },
        
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            childAspectRatio: 2.2
          ), 
      ),
    );
  }
}
