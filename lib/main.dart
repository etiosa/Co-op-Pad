import 'package:flutter/material.dart';
import 'package:james_parker_app/view/member/Dashboard.dart';
import 'package:james_parker_app/view/member/nav-screen.dart';
import '../widgets/Adminwidgets.dart';
import './routes/routes.dart';

import 'dart:io' show Platform;

// 1) change the font to poppins
//2)  Finish the Member UI design -implementation Windows / Mac/Ios/Android
//3) Finish the Landloard UI design  -Implementation Windows/ Mac/Ios/Android
//4) Intergate  Firebase
//4) Integrate Stripe
//5) Integrate message within the app
//7) Run test
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Running());
}

class Running extends StatelessWidget {
  final bool = true;

  @override
  Widget build(BuildContext context) {
    var appEntrance;

    if (Platform.isAndroid) {
      appEntrance = Dashboard();
    } else if (Platform.isMacOS) {
      appEntrance = Text('IsMac');
    } else if (Platform.isWindows) {
      appEntrance = Text('IsWindwos');
    } else if (Platform.isIOS) {
      appEntrance = Text('IsIOs');
    }

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
          body:

              // mainAxisAlignment: MainAxisAlignment.center,
              ScreenNavigator()),

      //  backgroundColor: JayParkercolors.secondaryTextFieldBackground),
    );
  }
}
