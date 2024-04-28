import 'package:flutter/material.dart';

class HotDealcontent extends StatelessWidget {
  const HotDealcontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      // height: 200,
      decoration: BoxDecoration(
         border: Border.all(color: Colors.grey),
         borderRadius: BorderRadius.circular(10)
         ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                    left: 10,
                    right: 10
                  ),
                  width: 250,
                  height: 70,
                  decoration: BoxDecoration(
            image:const DecorationImage(
                image: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1678739395192-bfdd13322d34?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    
                    ),
            borderRadius: BorderRadius.circular(15)),
            
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("FS- Nike Air",style: TextStyle(color: const Color.fromARGB(255, 1, 58, 104),fontWeight: FontWeight.w500),),
                        Text("Max 270 React ... ",style: TextStyle(color: const Color.fromARGB(255, 1, 58, 104),fontWeight: FontWeight.w500),),
                        Text("299,43 ",style: TextStyle(color: const Color.fromARGB(255, 1, 58, 104),fontWeight: FontWeight.w500),),
                       const Row(
                        children: [
               Text("534,33",style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Color.fromARGB(255, 127, 157, 162),fontWeight: FontWeight.w500),),
              SizedBox(
                width: 20,
              ),
               Text("40% off",style: TextStyle(
                color: Colors.redAccent,fontWeight: FontWeight.w500),),
              
                        
                ],
              )
                        ],
                       ),
            ) 
        ],
      ) 
        
      
    );
  }
}
