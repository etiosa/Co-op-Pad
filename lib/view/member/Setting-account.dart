import 'package:flutter/material.dart';

class SettingAccount extends StatefulWidget {
  @override
  _SettingAccountState createState() => _SettingAccountState();
}

//TDOD fix the style and button
class _SettingAccountState extends State<SettingAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 249, 251),
       
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0, left: 20, top:30),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 50.0, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Account',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      Container(
                          width: 120,
                          height: 50,
                          padding: EdgeInsets.only(bottom: 5, right: 20),
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
                            child: const Text('Update'),
                            onPressed: () {
                              // Navigator.pushNamed(context, '/dashboard');
                              print("Signout");
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 40.0, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          margin: EdgeInsets.only(right: 50),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  image:
                                      new AssetImage('assets/images/House.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Joe',
                              style: TextStyle(fontSize: 20, height: 1.5),
                            ),
                            Text(
                              'Joe@gmail.com',
                              style: TextStyle(fontSize: 20, height: 1.5),
                            ),
                            Text(
                              '111-333-4444',
                              style: TextStyle(fontSize: 20, height: 1.5),
                            )
                          ],
                        )
                      ],
                    )),
                const Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, right: 20.0, bottom: 40),
                  child: const TextField(
                    obscureText: false,
                    // autofocus: ,

                    decoration: const InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: const BorderSide(
                                color: const Color.fromARGB(255, 57, 62, 70),
                                width: 1,
                                style: BorderStyle.solid)),
                        labelText: 'First Name',
                        labelStyle: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            height: 1)),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, right: 20.0, bottom: 40),
                  child: const TextField(
                    obscureText: false,
                    // autofocus: ,

                    decoration: const InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: const BorderSide(
                                color: const Color.fromARGB(255, 57, 62, 70),
                                width: 2,
                                style: BorderStyle.solid)),
                        labelText: 'Last Name',
                        labelStyle: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            height: 1)),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, right: 20.0, bottom: 40),
                  child: const TextField(
                    obscureText: false,
                    // autofocus: ,

                    decoration: const InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: const BorderSide(
                                color: const Color.fromARGB(255, 57, 62, 70),
                                width: 2,
                                style: BorderStyle.solid)),
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            height: 1)),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, right: 20.0, bottom: 40),
                  child: const TextField(
                    obscureText: false,
                    // autofocus: ,

                    decoration: const InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: const BorderSide(
                                color: const Color.fromARGB(255, 57, 62, 70),
                                width: 2,
                                style: BorderStyle.solid)),
                        labelText: 'Phone Number',
                        labelStyle: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            height: 1)),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
