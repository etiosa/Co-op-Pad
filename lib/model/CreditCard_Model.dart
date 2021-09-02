import "package:flutter/foundation.dart";

class CreditCardModel {
  String credNumber;
  String expireDate;

  String name;

  CreditCardModel(
      {@required this.credNumber,
      @required this.expireDate,
      @required this.name});
}
