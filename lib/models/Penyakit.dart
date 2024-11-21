class Penyakit {
  final int id;
  final String namaPenyakit;
  // final String? description;

  Penyakit({
    required this.id,
    required this.namaPenyakit,
    // this.description,
  });

  factory Penyakit.fromJson(Map<String, dynamic> json) {
    return Penyakit(
      id: json['id'],
      namaPenyakit: json['nama_penyakit'],
      // description: json['description'],
    );
  }
  @override
  String toString() {
    return namaPenyakit; // Kembalikan nilai name saat diakses sebagai String
  }
}
