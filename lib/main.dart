import 'package:cop_oppad/view/member/Dashboard.dart';
import 'package:cop_oppad/view/member/Maintenance.dart';
import 'package:cop_oppad/view/member/New-Payment.dart';
import 'package:cop_oppad/view/member/Setting-account.dart';
import 'package:cop_oppad/view/member/Setting-emergency.dart';
import 'package:cop_oppad/view/member/Setting-payment.dart';
import 'package:cop_oppad/view/member/nav-screen.dart';
import 'package:flutter/material.dart';

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
     
              // mainAxisAlignment: MainAxisAlignment.center,
             // ScreenNavigator()),
        initialRoute: '/',
        routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Home(),
        '/dashboard' :(context) => ScreenNavigator(),
        '/dashboard/personalinformation': (context) =>SettingAccount(),
        '/dashboard/paymentinformation': (context)=>SettingPayment(),
        '/dashboard/emergency': (context)=>SettingEmergency(),
        '/dashboard/addpayment': (context)=>AddNewPayment(),
        '/dashboard/mainteance' : (context) =>Maintenance(),
        // When navigating to the "/second" route, build the SecondScreen widget.
       // '/second': (context) => const SecondScreen(),
      },

      //  backgroundColor: JayParkercolors.secondaryTextFieldBackground),
    );
  }
}
