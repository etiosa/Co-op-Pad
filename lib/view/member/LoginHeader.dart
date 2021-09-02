import 'package:flutter/material.dart';

class Login_Header extends StatelessWidget {
  const Login_Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              image: new AssetImage('assets/images/House.png'),
                              fit: BoxFit.cover)),
                    ),
                    // need to change font family
                    const Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                      child: const Text(
                        'Afternoon',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ), //base on time zone afternoon evening or morning
                    const Text(
                      'John Doe',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  width: 1,
                  child: Transform.translate(
                    offset: const Offset(40, -70),
                    child: Container(
                      color: Colors.white,
                      //trans
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "Unit",
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: const Text(
                      '123 web, NC, 2825',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: const Text(
                      '#12c',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: const Text(
                      'LandLoard',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'J. James',
                        style: const TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {
                            print("callbutton pressed");
                          },
                          icon: InkWell(
                            child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromARGB(255, 121, 113, 234),
                                ),
                                child: const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 20,
                                )),
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      color: Color.fromARGB(255, 67, 83, 109),
    );
  }
}
