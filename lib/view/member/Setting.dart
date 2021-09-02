import 'package:flutter/material.dart';

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back),
              Padding(
                padding: const EdgeInsets.only(left:20.0, right:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Account'),
                    ElevatedButton(
                        onPressed: () {
                          print('update');
                        },
                        child: Text('Update'))
                  ],
                ),
              ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('John Joe'), 
                      Text('Joe@gmail.com'),
                      Text('111-333-4444')
                      ],)
          
        
            ],),
            
            ElevatedButton(onPressed: (){print('change picture');}, 
            child:Text('change picture'),
            ),
        
        
             const Padding(
               padding: const EdgeInsets.only(left:15.0, right: 20.0,bottom: 40, top:30),
               child: const TextField(
                  obscureText: false,
                 // autofocus: ,
                 
                  decoration: const InputDecoration(
                    
                      enabledBorder: const UnderlineInputBorder(
                        
                          borderSide: const BorderSide(
                              color: const Color.fromARGB(255, 57, 62, 70),
                              width: 2,
                              
                              style: BorderStyle.solid)),
                      labelText: 'First Name',
                      labelStyle: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 14,height: 1
                          
                          
                        )),
                ),
             ),
        
        
        
          const Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 20.0, bottom: 40),
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
                              fontSize: 14,
                              height: 1)),
                    ),
                  ),
        
        
                          const Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 20.0, bottom: 40),
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
                              fontSize: 14,
                              height: 1)),
                    ),
                  ),
        
        
        
        
                          const Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 20.0),
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
                              fontSize: 14,
                              height: 1)),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(top:50.0, bottom:40),
                child: Text('Emergency Contact',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 16, 16, 16)
                    ),

                ),
              ),

        
        
                          const Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 20.0, bottom: 40, top:40),
                    child: const TextField(
                      obscureText: false,
                      autofocus: false,
                      // autofocus: ,

                      decoration: const InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: const BorderSide(
                                  color: const Color.fromARGB(255, 57, 62, 70),
                                  width: 2,
                                  style: BorderStyle.solid)),
                          labelText: 'First Name',
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 16, 16, 16),
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              height: 1)),
                    ),
                  ),

                  
        
                          const Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 20.0, bottom: 40),
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
                              fontSize: 14,
                              height: 1)),
                    ),
                  ),

                  
        
                          const Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 20.0, bottom: 40),
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
                              fontSize: 14,
                              height: 1)),
                    ),
                  ),

                  
        
                          const Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 20.0, bottom: 40),
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
                              fontSize: 14,
                              height: 1)),
                    ),
                  ),
        
        
            ],
          ),
        ),
      ),
    ));
  }
}
