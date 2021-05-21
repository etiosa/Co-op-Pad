import 'package:flutter/cupertino.dart';

class PaymentInovices {
  final DateTime invoiceDate;
  final double amountPaid;
  final String invoiceNumber;
  final String memberFirstName;
  final String memberLastName;
  final String memberHouse;

  PaymentInovices({
    @required this.invoiceDate, 
    @required this.amountPaid,
    @required this.invoiceNumber,
    @required this.memberFirstName,
    @required this.memberLastName,
    @required this.memberHouse
    
    });
}
