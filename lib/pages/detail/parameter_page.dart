import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koi_farm/base/column_layout.dart';
import 'package:koi_farm/pages/detail/monitor_page.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:koi_farm/widgets/custom_menu.dart';
import 'package:koi_farm/widgets/heading.dart';

class ParameterPage extends StatefulWidget {
  const ParameterPage({super.key});

  @override
  State<ParameterPage> createState() => _ParameterPageState();
}

class _ParameterPageState extends State<ParameterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomMenu(),
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
                height: 396,
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
                      Heading(
                          heading: 'Parameter Kolam',
                        ),
                      SizedBox(height: Dimensions.height15),
                      Expanded(
                        child: GridView.builder(
                          itemCount: 3, // Adjust based on your item count
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1, // Number of columns
                            mainAxisSpacing: 8.0, // Add spacing between rows
                            crossAxisSpacing:
                                8.0, // Add spacing between columns
                            childAspectRatio:
                                2, // Adjust this ratio to fit your layout needs
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            // Example condition to determine color
                            bool isConditionTrue = index % 2 ==
                                0; // Modify this condition as needed

                            Color textColor = isConditionTrue
                                ? Colors.green
                                : Colors
                                    .orange; // Set text color based on condition

                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MonitorPage(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors
                                      .white, // Background color remains white
                                  border: Border.all(
                                    color: isConditionTrue
                                        ? Colors.green
                                        : Colors.orange, // Border color
                                    width: 3.0, // Thickness of the border
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppColumnLayout(
                                        firstText: "04/08/2024",
                                        secondText: "Kolam Tegalgede",
                                        alignment: CrossAxisAlignment.start,
                                        fontweight: FontWeight.bold,
                                        selectColor:
                                            textColor, // Pass the determined color
                                      ),
                                      SizedBox(
                                          height:
                                              8), // Control spacing between items
                                      AppColumnLayout(
                                        firstText: "Nitrite: 0.18 ppm",
                                        secondText: "Oxygen: 7.8 ppm",
                                        alignment: CrossAxisAlignment.start,
                                        fontweight: FontWeight.normal,
                                        selectColor:
                                            textColor, // Pass the determined color
                                      ),
                                      SizedBox(height: 8),
                                      AppColumnLayout(
                                        firstText: "Nitrate: 14 ppm",
                                        secondText: "Temperature: 57.2 °C",
                                        alignment: CrossAxisAlignment.start,
                                        fontweight: FontWeight.normal,
                                        selectColor:
                                            textColor, // Pass the determined color
                                      ),
                                      SizedBox(height: 8),
                                      AppColumnLayout(
                                        firstText: "Phosphate: 0.4 ppm",
                                        secondText: "Nilai pH: 6.9",
                                        alignment: CrossAxisAlignment.start,
                                        fontweight: FontWeight.normal,
                                        selectColor:
                                            textColor, // Pass the determined color
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
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
