import 'package:flutter/cupertino.dart';
import 'package:james_parker_app/model/HouseType.dart';

import '/model/Address.dart';



enum HouseType {

  SingleFamily,
  MultiFamily,
  TownHouse,
}
class HouseData {
  final Address houseAddress;
  final String houseId;
  final houseType;

  HouseData({@required this.houseAddress, @required this.houseId, @required this.houseType});
}
