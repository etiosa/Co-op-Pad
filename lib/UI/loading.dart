import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final int middleHeight;
  final int middleWeight;
  final int height;
  final int weight;

  Loading({
     @required   this.middleHeight, 
     @required   this.middleWeight, 
     @required   this.height, 
     @required   this.weight});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(),
      )
    );
  }
}
