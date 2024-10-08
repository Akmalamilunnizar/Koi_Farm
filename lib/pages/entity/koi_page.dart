import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koi_farm/routes/route_helper.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:koi_farm/widgets/custom_menu.dart';
import 'package:koi_farm/widgets/heading.dart';

class KoiPage extends StatefulWidget {
  const KoiPage({super.key});

  @override
  State<KoiPage> createState() => _KoiPageState();
}

class _KoiPageState extends State<KoiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomMenu(),
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
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius30),
                    topRight: Radius.circular(Dimensions.radius30),
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Heading(
                          heading: 'Daftar Ikan',
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.height15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Jumlah Koi di Kolam Tegalgede 16",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.font16,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_circle_sharp),
                        ),
                      ],
                    ),

                    // Ensure ListView gets proper constraints using Expanded
                    // Container(
                    //   height: 105,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(15),
                    //   ),
                    //   padding:
                    //       EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    //   child: Row(children: [
                    //     Container(
                    //       height: 95,
                    //       width: 110,
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(10),
                    //           image: DecorationImage(
                    //               image: AssetImage(
                    //                   "assets/image/doitsuKarashigoi.jpg"),
                    //               fit: BoxFit.cover)),
                    //     )

                    //   ]),
                    // ),
                    Expanded(child: _growth()),
                  ],
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
      physics: AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Row(
            children: [
              // Image section (leading widget replacement)
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/doitsuKarashigoi.jpg"),
                  ),
                ),
              ),
              SizedBox(width: 15), // Space between image and text
              // Text and other details section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Nama: Jojo $index',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Umur: $index tahun'),
                    Text('Jenis: Doitsu Kohaku'),
                    Text('Gender: Perempuan'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.getDetailKoiPage());
                },
                child: Align(
                  alignment: Alignment.topCenter, // Adjust alignment to top
                  child: Icon(
                    Icons.touch_app,
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(height: 10),
      itemCount: 6,
    );
  }
}
