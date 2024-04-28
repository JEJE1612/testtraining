import 'package:flutter/material.dart';
import 'package:trainningtest/ui/widget/home/widgets/popularcontent.dart';

class PopulerList extends StatelessWidget {
  const PopulerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, i) {
          return PopulerContainer();
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 15,
          );
        },
      ),
    );
  }
}
