import 'package:flutter/material.dart';
import 'package:trainningtest/ui/screen/home.dart';
import 'package:trainningtest/ui/screen/signup.dart';
import 'package:trainningtest/ui/widget/auth/botton_form.dart';
import 'package:trainningtest/ui/widget/auth/text-auth.dart';
import 'package:trainningtest/ui/widget/auth/text_field_form.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Image.asset(
                    'assets/image1.png',
                    width: 307,
                    height: 290,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const TextFieldForm(
                  Keyboardtype: TextInputType.emailAddress,
                  icon: Icons.email_outlined,
                  hintText: 'Your Email',
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextFieldForm(
                  Keyboardtype: TextInputType.visiblePassword,
                  icon: Icons.lock_clock_outlined,
                  hintText: 'Your password',
                ),
                const SizedBox(
                  height: 10,
                ),
                BottonForm(
                  namebutton: 'Sing In',
                  onpressed: () {
                    
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                ),
               const SizedBox(
                  height: 20,
                ),
                TextAuth(
                  text1: 'Don`t have any account ?',
                  text2: 'Register',
                  onPressed: () {
                    
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const SignUp()));
                  },
                ),
               const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ));
  }
}
