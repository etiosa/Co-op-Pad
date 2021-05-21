import 'package:firebase_core/firebase_core.dart';
import "package:firebase_auth/firebase_auth.dart";
import 'package:flutter/material.dart';
import './routes/routes.dart';
import 'package:connectivity/connectivity.dart';
import './utils/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      print(e);
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("$_initialized init");
    print("$_error error");
    print(Firebase.apps);

    // Show error message if initialization failed
    if (_error) {
      return Container(
        color: Colors.white24,
        child: Text(
          'Errorsssssssss',
          textDirection: TextDirection.rtl,
          softWrap: true,
        ),
      );
    }

    // Show a loader until FlutterFire is initialized
    if (_initialized) {
      print(Firebase);
      //print(FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password));
      return Running();
    } else {
      return Loading();
    }
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      child: Text('homePage'),
    ));
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Loadingsssss',
          softWrap: true,
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

onChange(bool check) {
  print('I was checked');
}

class Running extends StatelessWidget {
  final bool checked = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:
           // mainAxisAlignment: MainAxisAlignment.center,
           
            Column(
              children: [
                    Image.asset(
          'assets/images/Logo.png',
          width: 100,
          height: 100,
          color: Colors.red,
        ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                  children: [
                     Center(
                       child: Container(
                         color: Colors.black12,
                         height: 20, width: 20,
                        
                       ),


                     ),

                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                         color: Colors.blueGrey,
                         height: 20, width: 20,
                         
                       ),
                       
                     )

                ],
                  
                
                ),
              Text("Login with:"),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.center,
                  children: [
                  Text('Google'),
                  Icon(Icons.face_sharp)

                  ,
                  Text('Facook'),
                  Icon(Icons.ac_unit_outlined),
                  Text('Instagram'),
                  Icon(Icons.ac_unit_rounded)

                ],),
              ElevatedButton(onPressed: (){print("I was click");}, 
                autofocus: true,
                clipBehavior:Clip.none,
                child: Text("Login"),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10))
                                               
                
                
                )
                ),
              
              ],

            )

               /*  Container(
                  padding: EdgeInsets.only(top: 100),
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                  'assets/images/Logo.png',
                  width: 100,
                  height: 100,
              ), */
               // ),
               /*  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: <Widget>[
                    
                      Container(color: Colors.amber[50], height: 30 ,width: 30,
                      padding: EdgeInsets.only(top: 100),
                                         

                      ),
  Container(
                    color: Colors.amber[50],
                    height: 30,
                    width: 30,
                                          padding: EdgeInsets.all(100),

                  )
                       

                  ],

                ) */
          
          ),
        //  backgroundColor: JayParkercolors.secondaryTextFieldBackground),
    );
  }

  loadingPage() {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
          width: 0,
        ),
        Image.asset(
          'assets/images/Logo.png',
          width: 100,
          height: 100,
        ),
        SizedBox(
          height: 30,
          width: 0,
        ),
        Text(
          'Cop-Pads',
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: JayParkercolors.SecondaryColor,
              letterSpacing: 6),
        ),
        SizedBox(
          height: 10,
          width: 0,
        ),
        SizedBox(
          height: 30,
          width: 0,
        ),
        Container(
            child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: JayParkercolors.SecondaryColor),
            ),
            Transform.translate(
              offset: const Offset(0, 0),
              child: Container(
                height: 7,
                width: 7,
                transform: Matrix4.translationValues(0, 20, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: JayParkercolors.SecondaryColor),
              ),
            ),
            Container(
              height: 7,
              width: 7,
              transform: Matrix4.translationValues(0, -20, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: JayParkercolors.SecondaryColor),
            ),
            Container(
              height: 7,
              width: 7,
              transform: Matrix4.translationValues(20, 0, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: JayParkercolors.SecondaryColor),
            ),
            Container(
              height: 7,
              width: 7,
              transform: Matrix4.translationValues(-20, 0, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: JayParkercolors.SecondaryColor),
            )
          ],
        )),
      ],
    ));
  }
}


/*void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

//bloc --> Business Logic Componentts

  @override
  Widget build(BuildContext context) {
    print(MemberRoutes.loginPageRoute);
    print(MemberRoutes.admin);
    print(AdminRoutes.test);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      //routes
      routes: {}, //which object of route name and builder function on what to render: similar to Route in React js
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
} */
