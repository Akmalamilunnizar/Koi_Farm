import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:koi_farm/models/daftarkoi_model.dart'; // Pastikan path modelnya benar

class DetailKoi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan data koi yang dikirim melalui GetX
    final DaftarKoiModel koi = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Ikan Koi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Menampilkan gambar koi
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(koi.img), // Pastikan URL gambar valid
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Menampilkan detail koi
            Text(
              'Nama: ${koi.name}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text('Umur: ${koi.umur} tahun'),
            Text('Jenis: ${koi.jenisKoi}'),
            Text('Tanggal Lahir: ${koi.tanggalLahir}'),
            Text('Penyakit: ${koi.penyakit}'),
            Text('Keterangan: ${koi.description}'),
            Text('Tanggal Dibuat: ${koi.createdAt}'),
            Text('Tanggal Diubah: ${koi.updatedAt}'),
            // Bisa menambahkan informasi lain sesuai model koi
          ],
        ),
      ),
    );
  }
}
