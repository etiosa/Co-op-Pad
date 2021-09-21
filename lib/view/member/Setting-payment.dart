import 'package:flutter/material.dart';

//array of payment coming from the backend
class SettingPayment extends StatefulWidget {
  //SettingPayment({Key? key}) : super(key: key);

  @override
  _SettingPaymentState createState() => _SettingPaymentState();
}

class _SettingPaymentState extends State<SettingPayment> {
  bool _isdefaultone = false;
  bool _isdefaultwo = false;
  bool _isdefaulthree = false;

  bool _hasdefault = false;
  bool _isdefault = false;
  //need a class
  //alaso need a key to control the display of it
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 249, 251),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, top: 30, bottom: 30),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      print('tap');
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 45,
                      color: Color.fromARGB(255, 57, 62, 70),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 100, top: 10, left: 30),
                  child: const Text(
                    "Payments",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 16, 16, 16)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40, left: 30),
                  child: const Text(
                    "Default payment",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 57, 62, 70),
                        fontSize: 15),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // TODO type of card will be coming from here: create aan array for data model

                        Icon(Icons.credit_card),
                        Text('Visa 2522'),
                        Switch.adaptive(
                            value: _isdefaultone,
                            onChanged: (value) {
                              setState(() {
                                _isdefaultone = value;
                                _hasdefault = true;
                              });
                            },
                            activeColor: Color.fromARGB(255, 121, 113, 234)),
                      ],
                    ),
                    Divider(
                        thickness: 1, color: Color.fromARGB(255, 57, 62, 70)),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // TODO type of card will be coming from here: create aan array for data model

                        Icon(Icons.credit_card),
                        Text('Visa 2521'),
                        Switch.adaptive(
                          value: _isdefaultwo,
                          onChanged: (value) {
                            setState(() {
                              _isdefaultwo = value;
                            });
                          },
                          activeColor: Color.fromARGB(255, 121, 113, 234),
                        ),
                      ],
                    ),
                    Divider(
                        thickness: 1, color: Color.fromARGB(255, 57, 62, 70)),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // TODO type of card will be coming from here: create aan array for data model

                        const Icon(Icons.credit_card),
                        Text('Visa 2523'),
                        Switch.adaptive(
                          value: _isdefaulthree,
                          onChanged: (value) {
                            setState(() {
                              _isdefaulthree = value;
                            });
                          },
                          activeColor: Color.fromARGB(255, 121, 113, 234),
                        ),
                      ],
                    ),
                    Divider(
                        thickness: 1, color: Color.fromARGB(255, 57, 62, 70)),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                    width: 200,
                    height: 50,
                    padding: const EdgeInsets.all(2),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: ElevatedButton(
                        autofocus: true,
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 121, 113, 234)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ))),
                        child: const Text('Add new payment'),
                        onPressed: () {
                          // Navigator.pushNamed(context, '/dashboard');
                          Navigator.pushNamed(context, '/dashboard/addpayment');
                          print("Add new payment");
                        },
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
