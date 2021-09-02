import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:james_parker_app/model/CreditCard_Model.dart';

//coming from backend..
//an array of payment
//swtich statement based on type of the card

//all coming from strip api
//all the font need to be change
//listview builder
class Payment extends StatelessWidget {
  //const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //testing

    var _creditInformation = [
      CreditCardModel(
          credNumber: 'xxxx-xxx-xxxx-4444',
          expireDate: '12/2022',
          name: 'John Joe'),
      CreditCardModel(
          credNumber: 'xxxx-xxx-xxxx-4445',
          expireDate: '12/2026',
          name: 'Joh Joe'),
      CreditCardModel(
          credNumber: 'xxxx-xxx-xxxx-9999',
          expireDate: '12/2022',
          name: 'John Joe'),
      CreditCardModel(
          credNumber: 'xxxx-xxx-xxxx-2222',
          expireDate: '12/2025',
          name: 'John James'),
      CreditCardModel(
          credNumber: 'xxxx-xxx-xxxx-3333',
          expireDate: '12/2024',
          name: 'Jane Joe'),
      CreditCardModel(
          credNumber: 'xxxx-xxx-xxxx-1111',
          expireDate: '12/2023',
          name: 'James Parker')
    ];

    return (Container(
      height: 199,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 10, right: 10),    //// for every single item in the list and return a widget tree inside the
          itemCount: _creditInformation.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                print(_creditInformation[index].name);
                print('selected');
              },
              child: (Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 199,
                  width: 344,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
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
                        padding: const EdgeInsets.only(left: 50.0, bottom: 15),
                        child: Text(
                          _creditInformation[index].credNumber,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              letterSpacing: 1.2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0, bottom: 5.0),
                        child: Text(
                          'Expires',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Text(
                          _creditInformation[index].expireDate,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            _creditInformation[index].name,
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Icon(
                            FontAwesomeIcons.ccVisa,
                            color: Color.fromARGB(255, 216, 216, 238),
                            size: 50,
                          )
                        ],
                      )
                    ],
                  ))),
            );
          }),
    ));
  }
}
