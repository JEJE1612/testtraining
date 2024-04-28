import 'package:flutter/material.dart';
import 'package:trainningtest/ui/screen/home.dart';
import 'package:trainningtest/ui/screen/signin.dart';
import 'package:trainningtest/ui/widget/auth/botton_form.dart';
import 'package:trainningtest/ui/widget/auth/text-auth.dart';
import 'package:trainningtest/ui/widget/auth/text_field_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Padding(
               padding: const EdgeInsets.symmetric(
                horizontal: 50
               ),
               child: Image.asset('assets/image2.png',
               width: 307,
               height: 290,
               ),
             ),
            const SizedBox(
              height:30 ,
             ),             
            const TextFieldForm(
              Keyboardtype:TextInputType.emailAddress , 
              icon: Icons.person, 
              hintText: 'Your Name',
              ),
            const SizedBox(
              height: 5,
             ),
            const TextFieldForm(
              Keyboardtype:TextInputType.emailAddress , 
              icon: Icons.email_outlined, 
              hintText: 'Your Email',
              ),
            const SizedBox(
              height: 5,
             ),
            const TextFieldForm(
              Keyboardtype:TextInputType.visiblePassword , 
              icon: Icons.lock_clock_outlined, 
              hintText: 'Your password',
              ),              
            const SizedBox(
              height: 5,
             ),
              
            const TextFieldForm(
              Keyboardtype:TextInputType.emailAddress , 
              icon: Icons.phone, 
              hintText: 'Your Phone',
              ),
             const SizedBox(
              height: 10,
             ) 
            ,  BottonForm(
              namebutton: 'Sing Up',
              onpressed: () { 
                
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()));
                
               },
              ),
           const   SizedBox(
                height: 20,
              ),
              TextAuth(
              text1:  ' have a account ?', 
              text2:  'Sing in', 
              onPressed: () {  
                
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
              },),
              
              SizedBox(
                height: 50,
              ),

              
          
            ],
          ),
        ),

      )
     
    );
  }
}
