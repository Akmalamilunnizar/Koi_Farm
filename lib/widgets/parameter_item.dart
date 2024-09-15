import 'package:flutter/material.dart';
import 'package:koi_farm/utils/dimensions.dart';

class ParameterItem extends StatelessWidget {
  const ParameterItem({
    super.key,
    required this.value,
    required this.text,
    required this.unit, required this.imageUrl,
  });
  // final int value;
  final String value;
  final String text;
  final String unit;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: const Color(0xffE0E8FB),
            borderRadius: BorderRadius.all(
              Radius.circular(Dimensions.radius15),
            ),
          ),
          child: Image.asset(imageUrl),
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Text(
          value.toString() + unit,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
