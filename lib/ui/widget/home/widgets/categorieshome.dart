import 'package:flutter/material.dart';

class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 70,
      decoration: BoxDecoration(
          image:const DecorationImage(
              image: NetworkImage(
                  'https://plus.unsplash.com/premium_photo-1678739395192-bfdd13322d34?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
          borderRadius: BorderRadius.circular(15)),
      child:Padding(padding: EdgeInsets.only(
        top: 60,
        left: 20
      ),
      child:  const Text(
          "Accessories",
          style: TextStyle(
            color: Colors.black, 
            fontSize: 16,
            fontWeight: FontWeight.w400
            ),
        ),
      ),
    );
  }
}
