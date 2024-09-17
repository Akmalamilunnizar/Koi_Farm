import 'package:flutter/widgets.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final FontWeight fontweight;
  final CrossAxisAlignment alignment;
  final Color selectColor;
  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      required this.fontweight, required this.selectColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: TextStyle(
            fontSize: Dimensions.font16,
            fontWeight: fontweight,
            color: selectColor,
          ),
        ),
        Gap(Dimensions.height10),
        Text(
          secondText,
          style: TextStyle(
            fontSize: Dimensions.font16,
            fontWeight: fontweight,
            color: selectColor,
          ),
        ),
      ],
    );
  }
}
