import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'LoginHeader.dart';
import 'dashboardmenu.dart';


class Maintenance extends StatefulWidget {
  @override
  _MaintenanceState createState() => _MaintenanceState();
}

class _MaintenanceState extends State<Maintenance> {
  bool request = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            Login_Header(),
            dashboardmenu(),
            Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
               
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40.0),
                          child: Text(
                            'Maintenance request',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: TextField(
                              cursorColor: const Color.fromARGB(255, 57, 62, 70),
                              maxLines: 15,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(10.0),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 4,
                                          color: const Color.fromARGB(
                                              255, 57, 62, 70))))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:50.0),
                          child: Container(
                            width: 200,
                            height: 55,
                            margin: EdgeInsets.only(top: 50),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(255, 121, 113, 234)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ))),
                                onPressed: () {
                                  print('send request');
                                },
                                child: Text(
                                  'Submit',
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                        )
                      ]),
                
              ),
          ],
        ),
      )
    );
  }
}


