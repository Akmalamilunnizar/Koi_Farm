import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koi_farm/pages/monitoring/monitor_page.dart';
import 'package:koi_farm/routes/route_helper.dart';
import 'package:koi_farm/utils/colors.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:koi_farm/utils/smart_device_box.dart';
import 'package:koi_farm/widgets/parameter_item.dart';
import 'package:lottie/lottie.dart';

class PondPage extends StatefulWidget {
  const PondPage({super.key});

  @override
  State<PondPage> createState() => _PondPageState();
}

class _PondPageState extends State<PondPage> {
  // padding constants
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xffABCFF2), Color(0xff9AC6F3)],
  ).createShader(const Rect.fromLTRB(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/backgroundapp.jpg"),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                left: 20,
                top: 40,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
              top: 250,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius30),
                      topRight: Radius.circular(Dimensions.radius30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Daftar Kolam",
                        style: TextStyle(
                            fontSize: Dimensions.font26,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      Expanded(
                        child: GridView.builder(
                          itemCount: 2,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1),
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MonitorPage()),
                                );
                                // print("onTapPond");
                                // Get.toNamed(RouteHelper.getRecommendedFood(
                                //     index, "home"));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: size.width,
                                        height: 210,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/image/miegacoan.jpg"))),
                                      ),
                                      Positioned(
                                        top: 15,
                                        left: 15,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Kolam Tegalgede",
                                                  style: TextStyle(
                                                    fontSize: Dimensions.font16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                // TextSpan(
                                                //     text: "/1",
                                                //     style: TextStyle(
                                                //         fontSize: Dimensions.font16,
                                                //         fontWeight: FontWeight.normal,
                                                //         color: Colors.black54))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10,
                                  ),
                                  Text(
                                    "Jumlah ikan",
                                    style: TextStyle(
                                        fontSize: Dimensions.font16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                    textAlign: TextAlign.start,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.water,
                                        size: 15,
                                        color: Colors.grey.shade500,
                                      ),
                                      SizedBox(
                                        width: Dimensions.width10,
                                      ),
                                      Text(
                                        "Volume",
                                        style: TextStyle(
                                          fontSize: Dimensions.font16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade500,
                                        ),
                                      )
                                    ],
                                  )
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
            ),

            // Positioned(
            //   left: 0,
            //   top: -100,
            //   right: 0,
            //   child: Container(
            //     width: double.maxFinite,
            //     height: 300,
            //     decoration: BoxDecoration(
            //         image: DecorationImage(
            //             image: AssetImage('assets/image/pisanggoreng.jpg'))),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
