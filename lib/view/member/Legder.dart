import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ledger extends StatefulWidget {
  //const Ledger({ Key? key }) : super(key: key);

//TODO Tablet media queries
//TODO Change this to stateful widget
  @override
  State<Ledger> createState() => _LedgerState();
}

class _LedgerState extends State<Ledger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 246, 248),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 50,
                  ),
                 
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Text('Ledger',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 16, 16, 16)

                ),
               ),
             ),
            Container(
              color: Colors.white,
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right:15.0),
                    child: Icon(Icons.search,
                    size: 40,),
                  ),
                  Text('Search',
                  style: TextStyle(fontSize: 20, color:Colors.grey ),),
                ],),
              ),
            ),
            SizedBox(
              height: 50,
            ), //TODO LISTIVEW BUILDER
            Column(
              children: [
                InkWell(
                  onTap: () {
                    print('selected ledger');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.white,
                    
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Januaray 14,2021',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 107, 116, 130),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text('Sunday 10:20 AM',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 107, 116, 130),
                                        fontSize: 15)),
                              )
                            ],
                          ),
                          Text("\$120",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 107, 116, 130),
                                  fontSize: 20)),
                          Text('Paid',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 107, 116, 130),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                ),
              
              ],
            ),
          ],
          
        ),
      ),
    );
  }
}
