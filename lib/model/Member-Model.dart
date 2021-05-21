import "package:flutter/foundation.dart";


//Data model for Member
class Member {
  String firstName;
  String lastName;
  String emailAddress;
  String phoneNumbner;

  Member(
      {@required this.firstName,
      @required this.lastName,
      @required this.emailAddress,
      @required this.phoneNumbner});
}


//have validation function here 