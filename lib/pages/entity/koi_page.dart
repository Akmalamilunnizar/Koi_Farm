import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koi_farm/pages/detail/detail_koi.dart';
import 'package:koi_farm/routes/route_helper.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:koi_farm/widgets/custom_menu.dart';
import 'package:koi_farm/widgets/heading.dart';
import 'package:koi_farm/data/api/api_client.dart';
import 'package:koi_farm/models/daftarkoi_model.dart';

class KoiPage extends StatefulWidget {
  const KoiPage({super.key});

  @override
  State<KoiPage> createState() => _KoiPageState();
}

class _KoiPageState extends State<KoiPage> {
  late ApiClient apiClient;
  late Future<List<DaftarKoiModel>> koiListFuture;
  late String pondId, pondName;

  @override
  void initState() {
    super.initState();
    pondId = Get.arguments['pondId'];
    pondName = Get.arguments['pondName']; // Retrieve the passed pondId
    apiClient = Get.find<ApiClient>();
    koiListFuture = apiClient
        .fetchKoiListByPond(pondId); // Fetch koi list filtered by pondId
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: CustomMenu(),
      body: Stack(
        children: [
          // Gambar latar belakang
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/backgroundapp.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Tombol menu untuk drawer
          // Positioned(
          //   left: 20,
          //   top: 40,
          //   child: Builder(
          //     builder: (context) {
          //       return GestureDetector(
          //         onTap: () {
          //           Scaffold.of(context).openDrawer();
          //         },
          //         child: ClipRRect(
          //           borderRadius: BorderRadius.circular(5),
          //           child: Image.asset(
          //             "assets/image/menu.png",
          //             width: Dimensions.width30,
          //             height: Dimensions.height30,
          //             color: Colors.white,
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          // Konten utama
          Positioned(
            top: 250, // Menyesuaikan posisi konten
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius30),
                  topRight: Radius.circular(Dimensions.radius30),
                ),
              ),
              padding: const EdgeInsets.all(20), // Padding lebih rapat
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Judul yang diposisikan di tengah
                  Center(
                    child: Text(
                      'Daftar Ikan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // Menampilkan jumlah ikan koi
                  SizedBox(height: 10),
                  FutureBuilder<int>(
                    future: apiClient.fetchKoiCountId(pondId),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Text("Loading...");
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else if (snapshot.hasData) {
                        return Text(
                          "Jumlah Koi di ${pondName}: ${snapshot.data}",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        );
                      } else {
                        return Text("No data available");
                      }
                    },
                  ),
                  // Menampilkan daftar koi
                  // SizedBox(height: 15), // Menambahkan sedikit jarak
                  Expanded(
                    child: FutureBuilder<List<DaftarKoiModel>>(
                      future: koiListFuture, // Already filtered by pondId
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(
                              child: Text('Error: ${snapshot.error}'));
                        } else if (snapshot.hasData &&
                            snapshot.data!.isNotEmpty) {
                          var koiList = snapshot.data!;
                          return ListView.builder(
                            itemCount: koiList.length,
                            itemBuilder: (context, index) {
                              var koi = koiList[index];
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                child: InkWell(
                                  onTap: () {
                                    Get.to(DetailKoi(), arguments: koi);
                                  },
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          // Koi image
                                          Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Dimensions.radius15),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    "http://127.0.0.1:8000/storage/" +
                                                        koi.img!),
                                              ),
                                            ),
                                          ),
                                          // Koi details
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Nama: ${koi.name}',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text('Umur: ${koi.umur} tahun'),
                                                Text('Jenis: ${koi.jenisKoi}'),
                                              ],
                                            ),
                                          ),
                                          // Action icon
                                          GestureDetector(
                                            onTap: () {
                                              Get.to(DetailKoi(),
                                                  arguments: koi);
                                            },
                                            child: Icon(Icons.touch_app,
                                                color: Colors.orange),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                          color: Colors.grey,
                                          thickness: 1,
                                          indent: 15,
                                          endIndent: 15),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        } else {
                          return Center(
                              child: Text("No koi available for this pond"));
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
