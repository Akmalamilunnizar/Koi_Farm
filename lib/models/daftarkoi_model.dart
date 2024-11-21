import 'package:koi_farm/models/JenisKoi.dart';
import 'package:koi_farm/models/Penyakit.dart';

class DaftarKoiModel {
  final int id;
  final String name;
  final String description;
  final JenisKoi jenisKoi;
  final String tanggalLahir;
  final int umur;
  final String img;
  final String? createdAt;
  final String? updatedAt;
  final Penyakit? penyakit;

  DaftarKoiModel({
    required this.id,
    required this.name,
    required this.description,
    required this.jenisKoi,
    required this.tanggalLahir,
    required this.umur,
    required this.img,
    this.createdAt,
    this.updatedAt,
    this.penyakit,
  });

  factory DaftarKoiModel.fromJson(Map<String, dynamic> json) {
    return DaftarKoiModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      jenisKoi: JenisKoi.fromJson(json['jenis_koi']),
      tanggalLahir: json['tanggal_lahir'],
      umur: json['umur'],
      img: json['img'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      penyakit:
          json['penyakit'] != null ? Penyakit.fromJson(json['penyakit']) : null,
    );
  }
}
