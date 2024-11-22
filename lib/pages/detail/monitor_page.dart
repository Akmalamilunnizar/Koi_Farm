import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:koi_farm/models/pond_model.dart';
import 'package:koi_farm/routes/route_helper.dart';
import 'package:koi_farm/utils/colors.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:koi_farm/widgets/custom_menu.dart';
import 'package:koi_farm/widgets/parameter_item.dart';
import 'package:lottie/lottie.dart';

class MonitorPage extends StatefulWidget {
  const MonitorPage({super.key});

  @override
  State<MonitorPage> createState() => _MonitorPageState();
}

class _MonitorPageState extends State<MonitorPage> {
  // padding constants
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  bool isConditionTrue = false; // Initially set to false
  late String pondId;
  final PondModel pond = Get.arguments;

  @override
  void initState() {
    super.initState();
    // Toggle condition every 5 seconds
    // Timer.periodic(Duration(seconds: 5), (Timer timer) {
    //   setState(() {
    //     isConditionTrue = !isConditionTrue; // Toggle the condition
    //   });
    // });
    pondId = Get.parameters['id'] ?? 'Unknown';
    // Use pondId to fetch or display the data for this pond
  }

// Create a GlobalKey to control the Scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xffABCFF2), Color(0xff9AC6F3)],
  ).createShader(const Rect.fromLTRB(0.0, 0.0, 200.0, 70.0));

  final Shader linearGradientBackup = const LinearGradient(
    colors: <Color>[Color.fromARGB(255, 142, 197, 252), Color(0xff9AC6F3)],
  ).createShader(const Rect.fromLTRB(0.0, 0.0, 200.0, 70.0));

  // int selectedIndex = widget.SelectedId;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 0,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Builder(
                // Use Builder to access context under the Scaffold
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      // Open the drawer when menu icon is tapped
                      Scaffold.of(context).openDrawer();
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Image.asset(
                        "assets/image/menu.png",
                        width: Dimensions.width30,
                        height: Dimensions.height30,
                      ),
                    ),
                  );
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [                  
                  const SizedBox(
                    width: 4,
                  ),
                  // Dropdown not needed
                ],
              )
            ],
          ),
        ),
      ),
      drawer: CustomMenu(),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${pond.name}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              DateFormat('EEEE, d MMMM')
                  .format(DateTime.now()), // Format the current date
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            isConditionTrue
                ? Container(
                    width: size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.mainColor.withOpacity(.5),
                          offset: const Offset(0, 25),
                          blurRadius: 10,
                          spreadRadius: -12,
                        )
                      ],
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // Conditionally show Lottie animation

                        Positioned(
                          top: -60,
                          left: 0,
                          child: Lottie.asset(
                            "assets/image/water.json",
                            width: 150,
                          ),
                        ),

                        // Conditionally show the "Keran Hidup" text

                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: Text(
                            pond.relay_condition == 1
                                ? 'Keran Hidup'
                                : 'Keran Mati',
                            style: GoogleFonts.notoSansJp(
                              fontSize: Dimensions.font20,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        // Conditionally show the temperature

                        Positioned(
                          top: 20,
                          right: 20,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text(
                                  "38",
                                  style: TextStyle(
                                    fontSize: Dimensions.font65,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..shader = linearGradient,
                                  ),
                                ),
                              ),
                              Text(
                                "°C",
                                style: TextStyle(
                                  fontSize: Dimensions.font26,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()..shader = linearGradient,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    width: size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      color: AppColors.backupColor,
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.backupColor.withOpacity(.5),
                          offset: const Offset(0, 25),
                          blurRadius: 10,
                          spreadRadius: -12,
                        ),
                      ],
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // Conditionally show Lottie animation
                        Positioned(
                          top: -60,
                          left: 40,
                          child: Lottie.asset(
                            "assets/image/water_wave.json",
                            width: 80,
                          ),
                        ),
                        // Conditionally show the "Keran Hidup" text
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: Text(
                            "Keran Mati",
                            style: GoogleFonts.notoSansJp(
                                fontSize: Dimensions.font20,
                                color: Colors.white),
                          ),
                        ),
                        // Conditionally show the temperature

                        Positioned(
                          top: 20,
                          right: 20,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text(
                                  "38",
                                  style: TextStyle(
                                    fontSize: Dimensions.font65,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..shader = linearGradient,
                                  ),
                                ),
                              ),
                              Text(
                                "°C",
                                style: TextStyle(
                                  fontSize: Dimensions.font26,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()..shader = linearGradient,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ParameterItem(
                    text: "pH Air",
                    value: "7.00",
                    unit: 'pH',
                    imageUrl: 'assets/image/ph-balance.png',
                  ),
                  ParameterItem(
                    text: 'Suhu Kolam',
                    value: "38",
                    unit: '°C',
                    imageUrl: 'assets/image/thermometer.png',
                  ),
                  ParameterItem(
                    text: 'TDS',
                    value: "130",
                    unit: 'ppm',
                    imageUrl: 'assets/image/dissolved-oxygen-monitor.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ikan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.font26,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Define your action here
                    Get.toNamed(RouteHelper.getKoiPage());
                  },
                  child: Text(
                    'Daftar Lengkap',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: Dimensions.font16,
                        color: AppColors.mainColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Parameter Kolam',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.font26,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Define your action here
                    Get.toNamed(RouteHelper.getParameterPage());
                  },
                  child: Text(
                    'Detail Lengkap',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: Dimensions.font16,
                        color: AppColors.mainColor),
                  ),
                ),
              ],
            ),
            // SingleChildScrollView(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       // Expanded digunakan jika ada elemen dinamis seperti ListView
            //       Container(
            //         height:
            //             120, // Set the height large enough for the box shadow
            //         child: ListView.builder(
            //           scrollDirection: Axis.horizontal,
            //           itemCount: 5,
            //           itemBuilder: (BuildContext context, int index) {
            //             return Container(
            //               padding: EdgeInsets.symmetric(
            //                   vertical: 10), // Adjust the padding
            //               // Margin fixing the cropped boxShadow
            //               margin:
            //                   EdgeInsets.only(right: 20, bottom: 10, top: 10),
            //               width: 80,
            //               decoration: BoxDecoration(
            //                 color: Colors.white,
            //                 image: DecorationImage(
            //                   image: AssetImage("assets/image/koi.jpeg"),
            //                   fit: BoxFit.fill,
            //                 ),
            //                 borderRadius: BorderRadius.all(Radius.circular(10)),
            //                 boxShadow: [
            //                   BoxShadow(
            //                     offset: Offset(0, 1),
            //                     blurRadius: 5,
            //                     color: Colors.black54.withOpacity(.3),
            //                   ),
            //                 ],
            //               ),
            //             );
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // )

            // https://www.youtube.com/watch?v=kpHHPZocFMw&list=PLgadKTyFdWuhSyMbTAYGV10KK0rU364t4&index=4 13:49

            // Expanded(child: ListView.builder(itemBuilder: itemBuilder))
          ],
        ),
      ),
    );
  }
}
