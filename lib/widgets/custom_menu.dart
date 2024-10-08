
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koi_farm/routes/route_helper.dart';
import 'package:koi_farm/utils/colors.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.mainColor,
            ),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: Text('Parameter Kolam'),
            onTap: () {
              Get.toNamed(RouteHelper.getParameterPage());
            },
          ),
          ListTile(
            title: Text('Daftar Koi'),
            onTap: () {
              Get.toNamed(RouteHelper.getKoiPage());
            },
          ),
        ],
      ),
    );
  }
}