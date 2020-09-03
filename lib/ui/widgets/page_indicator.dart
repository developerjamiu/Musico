import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class PageIndicator extends StatelessWidget {
  final int currentIndex;

  PageIndicator({@required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Indicator(
          positionIndex: 0,
          currentIndex: currentIndex,
        ),
        SizedBox(
          width: 12,
        ),
        Indicator(
          positionIndex: 1,
          currentIndex: currentIndex,
        ),
        SizedBox(
          width: 12,
        ),
        Indicator(
          positionIndex: 2,
          currentIndex: currentIndex,
        ),
      ],
    );
  }
}

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;

  const Indicator({this.currentIndex, this.positionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: positionIndex == currentIndex ? 20 : 10,
      decoration: BoxDecoration(
          color: positionIndex == currentIndex ? kPrimary : Colors.green,
          borderRadius: BorderRadius.circular(50)),
    );
  }
}
