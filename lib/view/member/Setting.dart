import 'package:flutter/material.dart';

// change this
class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 249, 251),
        body: SafeArea(
          top: true,
          right: true,
          left: true,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 40,
                    ),
                     Container(
                        width: 100,
                        height: 50,
                        
                      
                          padding: EdgeInsets.only(bottom: 5, right:20),
                          child: ElevatedButton(
                            autofocus: true,
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 121, 113, 234)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ))),
                            child: const Text('Sigout'),
                            onPressed: () {
                              // Navigator.pushNamed(context, '/dashboard');
                              print("Signout");
                            },
                          ),
                        )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Setting',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 50),
                    color: Color.fromARGB(255, 244, 244, 250),
                    width: 370,
                    height: 70,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, '/dashboard/personalinformation');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "Personal Information",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 57, 62, 70)),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color.fromARGB(255, 224, 224, 249),
                            size: 50,
                          )
                        ],
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 50),
                    color: Color.fromARGB(255, 244, 244, 250),
                    width: 370,
                    height: 70,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, '/dashboard/paymentinformation');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "Payment",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 57, 62, 70)),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color.fromARGB(255, 224, 224, 249),
                            size: 50,
                          )
                        ],
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 50),
                    color: Color.fromARGB(255, 244, 244, 250),
                    width: 370,
                    height: 70,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/dashboard/emergency');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "Emergency contact",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 57, 62, 70)),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color.fromARGB(255, 224, 224, 249),
                            size: 50,
                          )
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Auto-pay'),
                      Switch.adaptive(
                        value: true,
                        onChanged: null,
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    width: 370,
                    child: Text(
                      "Payment will be withdraw automatically when rent is due",
                      style: TextStyle(fontSize: 12),
                    )),
              ],
            ),
          ),
        ));
  }
}
