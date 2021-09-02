import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'LoginHeader.dart';
import 'dashboardmenu.dart';

class Dashboard extends StatelessWidget {
  // can use stack to display---- this need to be staeful widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        //backgroundColor: Color.fromARGB(255, 249, 249, 251),
        extendBody: false,
      
        appBar: AppBar(
          
          actionsIconTheme: IconThemeData(
            color: Colors.white,
            size: 25,
            
          ),
          backgroundColor: Color.fromARGB(255, 67, 83, 109),
          elevation: 0,
          actions: [
            const Padding(
              padding: const EdgeInsets.only(
                right: 30.0,
              ),
              child: const Icon(
                FontAwesomeIcons.solidBell,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Icon(FontAwesomeIcons.cog),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Stack(
            children: [
              Column(
                children: [
                  Login_Header(),
                  dashboardmenu(),
                  //backend
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Transform.translate(
                      offset: const Offset(1, -40),
                      child: Container(
                        height: 300,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              
                              children: [
                                Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   const  Text(
                                      'Lease Type',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 57, 62, 70),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text('10 months'),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   const  Text(
                                      "Rent Due",
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 57, 62, 70),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                   const  Text("\$1200")
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                 // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Late Type',
                                      //textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 57, 62, 70),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                   const Text("\$5.00"),
                                  ],
                                ),
                                Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   const Text(
                                      "Total",
                                      //textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 57, 62, 70),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text("\$1205")
                                  ],
                                )
                              ],
                            ),
                            Container(
                              width: 160,
                             
                                
                              
                              
                              child: ElevatedButton(
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 121, 113, 234)),
                                elevation: MaterialStateProperty.all(0),
                               
                                 shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                             ))


                                ),
                                  onPressed: () {
                                    print("pay");
                                  },
                                  child: const Text('Pay')),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                Text('Notification')],
              ),
            ],
          ),
        ));
  }
}



