import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:koi_farm/base/custom_app_bar.dart';
import 'package:koi_farm/base/custom_loader.dart';
import 'package:koi_farm/controllers/auth_controller.dart';
import 'package:koi_farm/controllers/user_controller.dart';
import 'package:koi_farm/routes/route_helper.dart';
import 'package:koi_farm/utils/colors.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:koi_farm/widgets/account_widget.dart';
import 'package:koi_farm/widgets/app_icon.dart';
import 'package:koi_farm/widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool _userLoggedIn = Get.find<AuthController>().userLoggedIn();
    if (_userLoggedIn) {
      Get.find<UserController>().getUserInfo();
      print("User telah login");
    }

    return Scaffold(
      appBar: CustomAppBar(title: "Profil"),
      body: GetBuilder<UserController>(builder: (userController) {
        return userController.isLoading
            ? CustomLoader()
            : Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: Dimensions.height20),
                child: Column(
                  children: [
                    // Profile icon
                    AppIcon(
                      icon: Icons.person_outline_rounded,
                      backgroundColor: AppColors.mainColor,
                      iconColor: Colors.white,
                      iconSize: Dimensions.height45 + Dimensions.height30,
                      size: Dimensions.height15 * 10,
                    ),
                    SizedBox(
                      height: Dimensions.height30,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // Name
                            AccountWidget(
                              appIcon: AppIcon(
                                icon: Icons.person_outline_rounded,
                                backgroundColor: AppColors.mainColor,
                                iconColor: Colors.white,
                                iconSize: Dimensions.height10 * 5 / 2,
                                size: Dimensions.height10 * 5,
                              ),
                              bigText:
                                  BigText(text: userController.userModel!.name),
                            ),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                            // Phone
                            AccountWidget(
                              appIcon: AppIcon(
                                icon: Icons.phone,
                                backgroundColor: AppColors.yellowColor,
                                iconColor: Colors.white,
                                iconSize: Dimensions.height10 * 5 / 2,
                                size: Dimensions.height10 * 5,
                              ),
                              bigText: BigText(
                                  text: userController.userModel!.phone),
                            ),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                            // Email
                            AccountWidget(
                              appIcon: AppIcon(
                                icon: Icons.email_rounded,
                                backgroundColor: AppColors.yellowColor,
                                iconColor: Colors.white,
                                iconSize: Dimensions.height10 * 5 / 2,
                                size: Dimensions.height10 * 5,
                              ),
                              bigText: BigText(
                                  text: userController.userModel!.email),
                            ),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                            // Message
                            AccountWidget(
                              appIcon: AppIcon(
                                icon: Icons.message_rounded,
                                backgroundColor: Colors.redAccent,
                                iconColor: Colors.white,
                                iconSize: Dimensions.height10 * 5 / 2,
                                size: Dimensions.height10 * 5,
                              ),
                              bigText: BigText(text: "Pesan"),
                            ),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (Get.find<AuthController>().userLoggedIn()) {
                                  Get.find<AuthController>().clearSharedData();
                                  Get.offNamed(RouteHelper.getSignInPage());
                                } else {
                                  print("You are already logged out.");
                                }
                              },
                              child: AccountWidget(
                                appIcon: AppIcon(
                                  icon: Icons.logout_rounded,
                                  backgroundColor: Colors.redAccent,
                                  iconColor: Colors.white,
                                  iconSize: Dimensions.height10 * 5 / 2,
                                  size: Dimensions.height10 * 5,
                                ),
                                bigText: BigText(text: "Logout"),
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ); // Show loading if `isLoading` is true
      }),
    );
  }
}
