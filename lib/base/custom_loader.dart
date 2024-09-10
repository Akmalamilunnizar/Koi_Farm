import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koi_farm/utils/dimensions.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    // print("Printing loading state"+Get.find<AuthController>().isLoading.toString());
    return Center(
      child: Container(
        height: Dimensions.height20 * 2,
        width: Dimensions.height20 * 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.height20 * 2 / 2),
        ),
        alignment: Alignment.center,
        child: CircularProgressIndicator(color: Colors.blue,),
      ),
    );
  }
}
