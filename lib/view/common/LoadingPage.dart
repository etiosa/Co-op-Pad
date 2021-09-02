import 'package:flutter/material.dart';
class LoadingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column( children: [
        
         Expanded(child: Text('Loading pageS')),

         Container(
           color: Colors.amber,
         height: 400,
          
         )

      ],)
     
    
    );
  }
}