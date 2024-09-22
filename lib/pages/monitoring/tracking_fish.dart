import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koi_farm/pages/monitoring/monitor_page.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrackingFish extends StatefulWidget {
  const TrackingFish({super.key});

  @override
  State<TrackingFish> createState() => _TrackingFishState();
}

class _TrackingFishState extends State<TrackingFish> {
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
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
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
              ),
            ),
            Positioned(
              top: 150,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius30),
                    topRight: Radius.circular(Dimensions.radius30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Detail Koi",
                              style: TextStyle(
                                fontSize: Dimensions.font26,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.orange,
                                decorationThickness: 2,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.drive_file_rename_outline_sharp),
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Dimensions.height15),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MonitorPage(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 120,
                                child: Container(
                                  padding: const EdgeInsets.all(1),
                                  margin: const EdgeInsets.only(
                                    right: 0,
                                  ),
                                  width: 300,
                                  height: 188,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Colors.blueGrey.withOpacity(0.051),
                                        offset: const Offset(0.0, 3.0),
                                        blurRadius: 24.0,
                                        spreadRadius: 0.0,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "assets/image/doitsukarashigoi.jpg"),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 7),
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Martis',
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize:
                                                          Dimensions.font26,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SvgPicture.asset(
                                                    "assets/image/male-svgrepo-com.svg")
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Doitsu Karashigoi",
                                                  style: TextStyle(
                                                      color: Colors.grey[700]),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 8),
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[300],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Dimensions.radius15),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "Umur",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            "2 tahun",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[700],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "Panjang",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  kDefaultFontSize,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            "30 cm",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[700],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "Berat",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            "1.5 kg",
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[700],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 7),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Nama Ikan telah berenang di kolam "Kolam Tegalgede" sejak 05/10/2024',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: Dimensions.font16),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimensions.height15,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Riwayat Pertumbuhan",
                                              style: TextStyle(
                                                  color: Colors.grey[700]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 220, // Height of the scrollable area
                                child: Container(
                                  padding: const EdgeInsets.all(0),
                                  margin: const EdgeInsets.only(right: 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Colors.blueGrey.withOpacity(0.051),
                                        offset: const Offset(0.0, 3.0),
                                        blurRadius: 24.0,
                                        spreadRadius: 0.0,
                                      ),
                                    ],
                                  ),
                                  child: Expanded(
                                    child: GridView.builder(
                                      itemCount: 2,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 1),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MonitorPage()),
                                            );
                                            // print("onTapPond");
                                            // Get.toNamed(RouteHelper.getRecommendedFood(
                                            //     index, "home"));
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  Container(
                                                    width: size.width,
                                                    height: 210,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                                "assets/image/miegacoan.jpg"))),
                                                  ),
                                                  Positioned(
                                                    top: 15,
                                                    left: 15,
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 12,
                                                          vertical: 8),
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Text.rich(
                                                        TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  "Kolam Tegalgede",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    Dimensions
                                                                        .font16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
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
                                                      fontSize:
                                                          Dimensions.font16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          Colors.grey.shade500,
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
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
