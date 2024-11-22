import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:koi_farm/models/daftarkoi_model.dart';
import 'package:koi_farm/pages/detail/monitor_page.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:koi_farm/widgets/heading.dart';

class DetailKoi extends StatefulWidget {
  const DetailKoi({super.key});

  @override
  State<DetailKoi> createState() => _DetailKoiState();
}

class _DetailKoiState extends State<DetailKoi> {
  @override
  Widget build(BuildContext context) {
    final DaftarKoiModel koi = Get.arguments;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
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
                  Image.asset(
                    "assets/image/logo.png",
                    height: 45,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height -
                    150, // Adjust height to fit screen
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius30),
                    topRight: Radius.circular(Dimensions.radius30),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Heading(
                            heading: 'Detail Koi',
                          ),
                          // Align(
                          //   alignment: Alignment.topRight,
                          //   child: IconButton(
                          //     onPressed: () {},
                          //     icon: Icon(Icons.drive_file_rename_outline_sharp),
                          //     color: Colors.black,
                          //   ),
                          // ),
                        ],
                      ),
                      SizedBox(height: Dimensions.height15),
                      GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(1),
                                width: double.infinity,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blueGrey.withOpacity(0.051),
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
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                    "http://127.0.0.1:8000" +
                        '/uploads/' +
                        koi.img!, // Access img from each PondModel
                  ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${koi.name}',
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: Dimensions.font26,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Gap(5),
                                              // SvgPicture.asset(
                                              //     "assets/image/male-svgrepo-com.svg")
                                            ],
                                          ),
                                          Text(
                                            '${koi.jenisKoi}',
                                            style: TextStyle(
                                                color: Colors.grey[700]),
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
                                                        '"Umur"',
                                                        style: TextStyle(
                                                          color: Colors.orange,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      Text(
                                                        '${koi.umur} tahun',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                        "Penyakit",
                                                        style: TextStyle(
                                                          color: Colors.orange,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      Text(
                                                        '${koi.penyakit}',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                // Expanded(
                                                //   child: Column(
                                                //     crossAxisAlignment:
                                                //         CrossAxisAlignment
                                                //             .center,
                                                //     children: [
                                                      
                                                //     ],
                                                //   ),
                                                // ),
                                                
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: Dimensions.height15),
                              Text(
                                'Nama Ikan telah berenang di kolam "Kolam Tegalgede" sejak ${koi.tanggalLahir}',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: Dimensions.font16),
                              ),
                              SizedBox(height: Dimensions.height15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // children: [
                                //   Text(
                                //     "Riwayat Pertumbuhan",
                                //     style: TextStyle(
                                //       fontWeight: FontWeight.bold,
                                //       fontSize: Dimensions.font16,
                                //       color: Colors.black,
                                //     ),
                                //   ),
                                //   IconButton(
                                //     onPressed: () {},
                                //     icon: Icon(
                                //       Icons.add_circle_sharp,
                                //       color: Colors.orange,
                                //     ),
                                //   ),
                                // ],
                              ),
                              Text(
                                                        "Keterangan",
                                                        style: TextStyle(
                                                          color: Colors.orange,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      Text(
                                                        '${koi.description}',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                              // _growth(),
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

  Widget _growth() {
    return ListView.separated(
      physics:
          NeverScrollableScrollPhysics(), // Prevent ListView from scrolling separately
      shrinkWrap: true,
      padding: EdgeInsets.zero, // Remove padding for a tighter layout
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding:
              EdgeInsets.zero, // Remove default padding for a tighter layout
          leading: Container(
            height: 45,
            width: 45,
            child: Icon(
              Icons.stacked_line_chart_sharp,
              color: Colors.orange,
            ),
          ),
          title: Text(
            '04/14/2024 $index',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: '  Panjang: ',
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: '  $index' + ' cm',
                      style: TextStyle(color: Colors.orange)),
                ]),
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: '  Berat: ', style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: '  ${index + 1}' + ' kg',
                      style: TextStyle(color: Colors.orange)),
                ]),
              ),
            ],
          ),
          trailing: IconButton(
            onPressed: () {
              // Implement delete functionality here
            },
            icon: Icon(
              Icons.delete_outline_sharp,
              color: Colors.orange,
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(height: 10), // Adjusted gap
      itemCount: 6,
    );
  }
}
