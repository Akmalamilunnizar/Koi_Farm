import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koi_farm/utils/colors.dart';
import 'package:koi_farm/widgets/big_text.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool backButtonExist;
  final Function? onBackPressed;

  const CustomAppBar(
      {super.key,
      required this.title,
      this.backButtonExist = true,
      this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: BigText(
        text: title,
        color: Colors.white,
      ),
      centerTitle: true,
    backgroundColor: AppColors.mainColor,
      elevation: 0,
      
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(500, 53);
}
