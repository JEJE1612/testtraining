import 'package:flutter/material.dart';

class TextAuth extends StatelessWidget {
  final String text1;
  final String text2;
  final Function()? onPressed;
  const TextAuth({super.key, required this.text1, required this.text2,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: TextStyle(color: Colors.black),
          ),
          TextButton(
              onPressed:onPressed,
              child: Text(
                text2,
                style: TextStyle(color: Colors.orange),
              ))
        ],
      ),
    );
  }
}
