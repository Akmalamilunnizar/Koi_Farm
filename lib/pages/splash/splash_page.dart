import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koi_farm/controllers/pond_controller.dart';
import 'package:koi_farm/controllers/user_controller.dart';
import 'package:koi_farm/routes/route_helper.dart';
import 'package:koi_farm/utils/colors.dart';
import 'package:koi_farm/utils/dimensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  Future<void> _loadResource() async {
    // await Get.find<PopularProductController>().getPopularProductList();
    // await Get.find<RecommendedProductController>().getRecommendedProductList();
    await Get.find<UserController>().getUserInfo();
    await Get.find<PondController>().getPondList();
  }

  @override
  void initState() {
    super.initState();
    _loadResource();

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   ApiChecker();
    // });
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);

    Timer(const Duration(seconds: 3),
        () => Get.offNamed(RouteHelper.getInitial()));
  }

//1:47:25
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Koi Farm",
              style: GoogleFonts.passeroOne(
                  fontSize: 62,color: AppColors.splashTextColor),
            ),
            Image.asset(
              "assets/image/koi_splash.jpg",
              width: 250,
            ),
            Text(
              "Selamat Datang",
              style: TextStyle(
                  fontSize: Dimensions.font32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.splashTextColor),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Nikmati kemudahan dalam memantau kondisi kolam dan kesehatan ikan koi Anda secara real-time.",
                style: GoogleFonts.poppins(
                    fontSize: Dimensions.font12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.splashTextColor),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//1:32:10