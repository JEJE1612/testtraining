import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType Keyboardtype;
  final IconData icon;
  final String hintText;

  const TextFieldForm(
      {super.key,
      this.controller,
      required this.Keyboardtype,
      required this.icon,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 0.3,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextFormField(
            scrollPadding: EdgeInsets.symmetric(horizontal: 20),
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(icon), hintText: hintText),
            keyboardType: Keyboardtype,
            controller: controller,
          ),
        ),
      ),
    );
    
  }
}
