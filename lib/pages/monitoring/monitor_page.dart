import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koi_farm/utils/colors.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:koi_farm/utils/smart_device_box.dart';
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

  List mySmartDevices = [
    ["Suhu Air", "assets/image/idea.png", true],
    ["pH Kolam", "assets/image/idea.png", false],
    ["Kadar NH3", "assets/image/idea.png", false],
    ["TDS Kolam", "assets/image/idea.png", false],
    ["DO Kolam", "assets/image/idea.png", false],
    ["O2 Terlarut", "assets/image/idea.png", false],
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xffABCFF2), Color(0xff9AC6F3)],
  ).createShader(const Rect.fromLTRB(0.0, 0.0, 200.0, 70.0));

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
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Image.asset(
                  "assets/image/menu.png",
                  width: Dimensions.width30,
                  height: Dimensions.height30,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/image/menu.png",
                    width: Dimensions.width30,
                  ),
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tegalgede",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              "Minggu, 8 Mei",
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
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
                  ),
                ],
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -60,
                    left: 0,
                    //44:14 for dynamic image asset from web
                    child: Lottie.asset(
                      "assets/image/water.json",
                      width: 150,
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 20,
                    child: Text(
                      "Keran Hidup",
                      style: GoogleFonts.notoSansJp(fontSize: Dimensions.font20, color: Colors.white),
                      
                    ),
                  ),
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
                              foreground: Paint()..shader = linearGradient,
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
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
                    text: 'DO Meter',
                    value: "193.2",
                    unit: '%',
                    imageUrl: 'assets/image/dissolved-oxygen-monitor.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Today', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.font26,
                ),),
                Text('Next 7 Days', style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Dimensions.font16,
                  color: AppColors.mainColor
                ),),
              ],
            ),
            SizedBox(height: Dimensions.height20,),
            // Expanded(child: ListView.builder(itemBuilder: itemBuilder))
          ],
        ),
      ),
    );
  }
}
