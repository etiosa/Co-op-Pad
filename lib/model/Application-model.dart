import "package:flutter/foundation.dart";

class ApplicationData {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  //document field

  ApplicationData({
    @required this.firstName,
    @required this.lastName,
    @required this.phoneNumber
  });
}
