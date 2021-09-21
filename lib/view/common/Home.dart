import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 249, 249, 251),
        body: Container(
          margin: const EdgeInsets.only(top: 70),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'Co-op pad ',
                    style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 67, 83, 109)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: const Text(
                    ' Alternative housing ',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 57, 62, 70),
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: const Text(
                    ' management software to meet ',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 57, 62, 70),
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: const Text(
                    'today professional needs.',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 57, 62, 70),
                        fontWeight: FontWeight.normal),
                  ),
                ),
                // SizedBox(
                //   height: 207 ,
                // ),

                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  flex: 1,
                  child: Stack(children: [
                    Container(
                        alignment: Alignment.bottomCenter,
                        // height: MediaQuery.of(context).size.height / 1.37,
                        width: double.infinity,
                        foregroundDecoration: BoxDecoration(
                            image: DecorationImage(
                                repeat: ImageRepeat.noRepeat,
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.3),
                                    BlendMode.dstATop),
                                image: const AssetImage(
                                  'assets/images/House.png',
                                ),
                                alignment: Alignment.center,
                                fit: BoxFit.cover))),

                    //sizebOX

                    SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: const EdgeInsets.all(30),
                              child: const TextField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    enabledBorder: const UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3,
                                          color: const Color.fromARGB(
                                              255, 57, 62, 70)),
                                    ),
                                    labelText: 'Email/Phone',
                                    labelStyle: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                            const Padding(
                              padding: const EdgeInsets.all(30),
                              child: const TextField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    enabledBorder: const UnderlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: const Color.fromARGB(
                                                255, 57, 62, 70),
                                            width: 3,
                                            style: BorderStyle.solid)),
                                    labelText: 'Password',
                                    labelStyle: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Container(
                                width: 200,
                                height: 60,
                                padding: const EdgeInsets.all(2),
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: ElevatedButton(
                                    autofocus: true,
                                    style: ButtonStyle(
                                        elevation: MaterialStateProperty.all(0),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color.fromARGB(
                                                    255, 121, 113, 234)),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ))),
                                    child: const Text('Login'),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/dashboard');
                                      print("Login");
                                    },
                                  ),
                                ))
                          ]),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
