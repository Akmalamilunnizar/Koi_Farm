// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:koi_farm/base/custom_loader.dart';
// import 'package:koi_farm/base/no_data_page.dart';
// import 'package:koi_farm/controllers/pond_controller.dart';
// import 'package:koi_farm/models/pond_model.dart';
// import 'package:koi_farm/routes/route_helper.dart';
// import 'package:koi_farm/utils/app_constants.dart';
// import 'package:koi_farm/utils/colors.dart';
// import 'package:koi_farm/utils/dimensions.dart';
// import 'package:koi_farm/widgets/heading.dart';

// class ViewPond extends StatelessWidget {
//   // final int pageId;

//   const ViewPond({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // var product =
//     //     Get.find<PondController>().popularProductList[pageId];
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       body: GetBuilder<PondController>(
//         initState: (_) {
//           Get.find<PondController>().getPondList();
//         },
//         builder: (pondController) {
//           // if (isNotAvailable) {
//           //   return Center(
//           //     child: NoDataPage(
//           //       text: "Kamu belum menambahkan kolam !",
//           //       imgPath: "assets/image/empty_box.png",
//           //     ),
//           //   );
//           // }

//           // if (pondController.isLoading) {
//           //   return const CustomLoader();
//           // }

//           // List<PondModel> pondList = pondController.currentOrderList;
//           // if (pondList.isEmpty) {
//           //   return Center(
//           //     child: NoDataPage(
//           //       text: "Belum ada kolam",
//           //       imgPath: "assets/image/empty_box.png",
//           //     ),
//           //   );
//           // }

//           return Stack(
//             children: [
//               Positioned(
//                 left: 0,
//                 right: 0,
//                 child: Container(
//                   width: double.maxFinite,
//                   height: 280,
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("assets/image/backgroundapp.jpg"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               GetBuilder<PondController>(builder: (pondController) {
//                 return pondController.isLoaded
//                     ? Positioned(
//                         top: 250,
//                         child: Container(
//                           width: MediaQuery.of(context).size.width,
//                           height: 400,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(Dimensions.radius30),
//                               topRight: Radius.circular(Dimensions.radius30),
//                             ),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 20),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 const Heading(heading: 'Daftar Kolam'),
//                                 SizedBox(height: Dimensions.height15),
//                                 Expanded(
//                                   child: GridView.builder(
//                                     itemCount: pondController.pondList
//                                         .length, // Use currentOrderList from the controller
//                                     gridDelegate:
//                                         const SliverGridDelegateWithFixedCrossAxisCount(
//                                       crossAxisCount: 1,
//                                       mainAxisSpacing: 10,
//                                     ),
//                                     itemBuilder: (context, index) {
//                                       // Access each PondModel
//                                       return GestureDetector(
//                                         onTap: () {
//                                           Get.toNamed(
//                                               RouteHelper.getMonitorPage());
//                                         },
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Stack(
//                                               children: [
//                                                 Container(
//                                                   width: MediaQuery.of(context)
//                                                       .size
//                                                       .width,
//                                                   height: 210,
//                                                   decoration: BoxDecoration(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             20),
//                                                     image: DecorationImage(
//                                                       fit: BoxFit.cover,
//                                                       image: NetworkImage(
//                                                         AppConstants.BASE_URL +
//                                                             AppConstants
//                                                                 .UPLOAD_URL +
//                                                             pondController
//                                                                 .pondList[index]
//                                                                 .img!, // Access img from each PondModel
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Positioned(
//                                                   top: 15,
//                                                   left: 15,
//                                                   child: Container(
//                                                     padding: const EdgeInsets
//                                                         .symmetric(
//                                                       horizontal: 12,
//                                                       vertical: 8,
//                                                     ),
//                                                     decoration: BoxDecoration(
//                                                       color: Colors.white,
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8),
//                                                     ),
//                                                     child: Text(
//                                                       pondController
//                                                           .pondList[index]
//                                                           .name!,
//                                                       style: TextStyle(
//                                                         fontSize:
//                                                             Dimensions.font16,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             SizedBox(
//                                                 height: Dimensions.height10),
//                                             Text(
//                                               pondController
//                                                   .pondList[index].createdAt!,
//                                               style: TextStyle(
//                                                 fontSize: Dimensions.font16,
//                                                 fontWeight: FontWeight.w700,
//                                               ),
//                                             ),
//                                             Row(
//                                               children: [
//                                                 Icon(Icons.water,
//                                                     size: 15,
//                                                     color:
//                                                         Colors.grey.shade500),
//                                                 SizedBox(
//                                                     width: Dimensions.width10),
//                                                 Text(
//                                                   pondController.pondList[index]
//                                                       .volume! as String,
//                                                   style: TextStyle(
//                                                     fontSize: Dimensions.font16,
//                                                     color: Colors.grey.shade500,
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       );
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       )
//                     : CircularProgressIndicator(
//                         color: AppColors.mainColor,
//                       );
//               })
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
