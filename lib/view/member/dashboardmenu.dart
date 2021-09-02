import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class dashboardmenu extends StatelessWidget {
  const dashboardmenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(bottom: 100),
              child: InkWell(
                onTap: () {
                  print("tap");
                },
                child: Column(
                  children: [
                    const Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: const Icon(
                        FontAwesomeIcons.creditCard,
                        size: 40,
                      ),
                    ),
                    const Text("Pay Rent")
                  ],
                ),
              )),
          InkWell(
              onTap: () {
                print("Lease");
              },
              child: Container(
                  height: 120,
                  width: 120,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(
                        255, 227, 226, 241), //boolean if its active
                  ),
                  margin: const EdgeInsets.only(bottom: 100),
                  child: Column(
                    children: [
                      const Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: const Icon(
                          FontAwesomeIcons.fileContract,
                          size: 40,
                          color: Color.fromARGB(255, 67, 83, 109),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Lease",
                        style: TextStyle(
                            color: Color.fromARGB(255, 127, 123, 191),
                            fontSize: 15),
                      )
                    ],
                  ))),
          InkWell(
              onTap: () {
                print("Pay rent");
              },
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  margin: const EdgeInsets.only(bottom: 100),
                  child: Column(
                    children: [
                      const Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: const Icon(
                          FontAwesomeIcons.hammer,
                          size: 40,
                        ),
                      ),
                      const Text("Maintenance")
                    ],
                  ))),
        ],
      ),
    );
  }
}
