import 'package:flutter/material.dart';

class AboutusContent extends StatelessWidget {
  const AboutusContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-70,
      height: 250,
      decoration: BoxDecoration(
        image:DecorationImage(
          image: NetworkImage("https://media.istockphoto.com/id/618982838/photo/lace-up-for-the-workout-of-your-life.webp?b=1&s=170667a&w=0&k=20&c=MM0KHiD-bA75WDILoqWoObWroxJlUJ3AWO-3JfeZfQA="
          ))
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 30,
        left: 30
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Who we are?",style: TextStyle(
              color: Colors.white
              ,fontSize:30,
            fontWeight: FontWeight.bold  
            ),),
            Text("Lorem ipsum dolor sit amet,",style: TextStyle(
              color: Colors.white
              ,fontSize:16,
            fontWeight: FontWeight.w300   
            ),),
               Text("consetetur adipiscing eilt , sed do",style: TextStyle(
              color: Colors.white
              ,fontSize:16,
            fontWeight: FontWeight.w300   
            ),),Text("emiusmod tempor....",style: TextStyle(
              color: Colors.white
              ,fontSize:16,
            fontWeight: FontWeight.w300   
            ),),
            TextButton(onPressed: (){},
             child:Text("Read more",style: TextStyle(
              color: Colors.orange
              ,fontSize:16,
            fontWeight: FontWeight.w300   
            ),))
        
        
          ],
        ),
      ),
     
    );
  }
}