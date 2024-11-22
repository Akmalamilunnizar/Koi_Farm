import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koi_farm/controllers/auth_controller.dart';
import 'package:koi_farm/controllers/pond_controller.dart';
import 'package:koi_farm/controllers/user_controller.dart';
import 'package:koi_farm/pages/detail/monitor_page.dart';
import 'package:koi_farm/pages/ponds/view_pond.dart';
import 'package:koi_farm/routes/route_helper.dart';
import 'package:koi_farm/utils/app_constants.dart';
import 'package:koi_farm/utils/colors.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:koi_farm/utils/smart_device_box.dart';
import 'package:koi_farm/widgets/big_text.dart';
import 'package:koi_farm/widgets/heading.dart';
import 'package:koi_farm/widgets/parameter_item.dart';
import 'package:lottie/lottie.dart';

class PondPage extends StatefulWidget {
  const PondPage({super.key});

  @override
  State<PondPage> createState() => _PondPageState();
}

class _PondPageState extends State<PondPage> with TickerProviderStateMixin {
  late bool _isLoggedIn;
  // bool _isNotAvailable = true;

  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xffABCFF2), Color(0xff9AC6F3)],
  ).createShader(const Rect.fromLTRB(0.0, 0.0, 200.0, 70.0));

  @override
  void initState() {
    super.initState();
    // _isLoggedIn = Get.find<AuthController>().userLoggedIn();
    Get.find<PondController>().getPondList();
    // if (_isLoggedIn) {

    // }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: 280,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/backgroundapp.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GetBuilder<PondController>(builder: (pondController) {
          return pondController.isLoading
              ? Positioned(
                  top: 250,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius30),
                        topRight: Radius.circular(Dimensions.radius30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Heading(heading: 'Daftar Kolam'),
                          SizedBox(height: Dimensions.height15),
                          Expanded(
                            child: ListView.builder(
                              itemCount: pondController.pondList
                                  .length, // Use currentOrderList from the controller

                              itemBuilder: (context, index) {
                                final pond = pondController.pondList[index];
                                return GestureDetector(
                                  onTap: () {
                                    Get.to(MonitorPage(), arguments: pond);
                                    //                                 final pondId = pondController.pondList[index].id; // Assuming id is an int
                                    // Get.toNamed(RouteHelper.getMonitorPage(pondId.toString())); // Convert to String
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 210,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                  AppConstants.BASE_URL +
                                                      AppConstants.UPLOAD_URL +
                                                      pondController
                                                          .pondList[index]
                                                          .img!, // Access img from each PondModel
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 15,
                                            left: 15,
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 12,
                                                vertical: 8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                pond.name ?? "No Name",
                                                style: TextStyle(
                                                  fontSize: Dimensions.font16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: Dimensions.height10),
                                      // Text(
                                      //   "Dibuat tanggal: ${pond.createdAt}",
                                      //   style: TextStyle(
                                      //     fontSize: Dimensions.font16,
                                      //     fontWeight: FontWeight.w700,
                                      //   ),
                                      // ),
                                      Row(
                                        children: [
                                          Icon(Icons.water,
                                              size: 15,
                                              color: Colors.grey.shade500),
                                          SizedBox(width: Dimensions.width10),
                                          Text(
                                            "Volume: ${pond.volume}" + " ml",
                                            style: TextStyle(
                                              fontSize: Dimensions.font16,
                                              color: Colors.grey.shade500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(
                    color: AppColors.mainColor,
                  ),
                );
        })
      ],
    );
  }
}
