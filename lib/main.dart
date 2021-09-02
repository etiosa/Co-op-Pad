import 'package:flutter/material.dart';
import 'package:james_parker_app/view/member/Dashboard.dart';
import 'package:james_parker_app/view/member/nav-screen.dart';
import '../widgets/Adminwidgets.dart';
import './routes/routes.dart';

import 'dart:io' show Platform;

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
