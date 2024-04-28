import 'package:flutter/material.dart';

class BottonForm extends StatelessWidget {
  final Function() onpressed;
  final String namebutton;
  const BottonForm(
    {super.key,
     required this.onpressed, 
     required this.namebutton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 600,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.orange),
        child: TextButton(
            onPressed:onpressed,
            child: Text(
              namebutton,
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
