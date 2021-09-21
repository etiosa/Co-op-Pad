import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddNewPayment extends StatefulWidget {
  //const AddNewPayment({ Key? key }) : super(key: key);

  @override
  _AddNewPaymentState createState() => _AddNewPaymentState();
}

class _AddNewPaymentState extends State<AddNewPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 20),
                child: Icon(
                  Icons.arrow_back,
                  size: 40,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    'New Payment',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      width: 100,
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
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                          child: const Text('update'),
                          onPressed: () {
                            // Navigator.pushNamed(context, '/dashboard');
                            //Navigator.pushNamed(context, '/dashboard/addpayment');
                            print("update");
                          },
                        ),
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 150,
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 87, 110, 146),
                              Color.fromARGB(255, 121, 113, 234)
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 50.0,
                          ),
                          child: Text(
                            'xxxx-xxxx-xxx-4444',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                letterSpacing: 1.2),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 50.0,
                          ),
                          child: Text(
                            'Expires',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Text(
                            '12/2022',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'John Joe',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Icon(
                              FontAwesomeIcons.ccVisa,
                              color: Color.fromARGB(255, 216, 216, 238),
                              size: 30,
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            const Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 20.0, bottom: 40),
              child: const TextField(
                obscureText: false,
                // autofocus: ,

                decoration: const InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: const BorderSide(
                            color: const Color.fromARGB(255, 57, 62, 70),
                            width: 2,
                            style: BorderStyle.solid)),
                    labelText: 'Cardholder full name',
                    labelStyle: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        height: 1)),
              ),
            ),
            const Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 20.0, bottom: 40),
              child: const TextField(
                obscureText: false,
                // autofocus: ,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: const InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: const BorderSide(
                            color: const Color.fromARGB(255, 57, 62, 70),
                            width: 2,
                            style: BorderStyle.solid)),
                    labelText: 'Card number',
                    labelStyle: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        height: 1)),
              ),
            ),
            const Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 20.0, bottom: 40),
              child: const TextField(
                obscureText: false,
                autofocus: true,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: const BorderSide(
                            color: const Color.fromARGB(255, 57, 62, 70),
                            width: 2,
                            style: BorderStyle.solid)),
                    labelText: 'Expiration date',
                    labelStyle: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        height: 1)),
              ),
            ),
            const Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 20.0, bottom: 40),
              child: const TextField(
                obscureText: false,
                keyboardType: TextInputType.numberWithOptions(),

                // autofocus: ,

                decoration: const InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: const BorderSide(
                            color: const Color.fromARGB(255, 57, 62, 70),
                            width: 2,
                            style: BorderStyle.solid)),
                    labelText: 'CVV',
                    labelStyle: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        height: 1)),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
