import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:koi_farm/controllers/user_controller.dart';
import 'package:koi_farm/utils/colors.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:koi_farm/widgets/big_text.dart';
import 'package:koi_farm/widgets/display_name.dart';
// import 'package:get/get.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

Future<void> _loadResource() async {
  // await Get.find<PopularProductController>().getPopularProductList();
  // await Get.find<RecommendedProductController>().getRecommendedProductList();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current height is " + MediaQuery.of(context).size.height.toString());
    return RefreshIndicator(
        child: Column(
          children: [
            //showing the header
            GetBuilder<UserController>(
              builder: (userController) { 
                return Container(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: Dimensions.height45, bottom: Dimensions.height15),
                    padding: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            BigText(
                                text: "Indonesia", color: AppColors.mainColor),
                            Row(
                              children: [
                                DisplayName(
                                  // text: "tes",
                                  text: '',
                                  // Receiving object name from widget display_name
                                  color: Colors.black54,
                                ),
                                Icon(
                                  Icons.arrow_drop_down_circle_rounded,
                                  size: Dimensions.iconSize16,
                                )
                              ],
                            )
                          ],
                        ),
                        Center(
                          child: Container(
                            width: Dimensions.height45,
                            height: Dimensions.height45,
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: Dimensions.iconSize24,
                            ),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius15),
                              color: AppColors.mainColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            //showing the body
            Expanded(
              child: SingleChildScrollView(
                // child: FoodPageBody(),
              ),
            ),
          ],
        ),
        onRefresh: _loadResource);
  }
}
