import 'package:flutter/material.dart';
import 'package:koi_farm/utils/dimensions.dart';

class Heading extends StatelessWidget {
  final String heading;
  const Heading({
    super.key,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.only(
            bottom: 1, // space between underline and text
          ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Colors.orange, // Text colour here
            width: 1.0, // Underline width
          ))),
          child: Text(
            heading,
            style: TextStyle(
              fontSize: Dimensions.font26,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Text colour here
            ),
          ),
        ));
  }
}
