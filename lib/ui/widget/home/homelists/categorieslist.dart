import 'package:flutter/material.dart';
import 'package:trainningtest/ui/widget/home/widgets/categorieshome.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, i) {
          return CategoriesContainer();
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
