import 'package:flutter/cupertino.dart';

class Address {
  final String streetAddress_option_one;
  final String streetAddress_optional_two;
  final String zipCode;
  final String country;
  final String state;
  final String county;

  Address({
    @required this.streetAddress_option_one,
    @required this.streetAddress_optional_two,
    @required this.zipCode,
    @required this.country,
    @required this.state,
    @required this.county
   
   });
}
