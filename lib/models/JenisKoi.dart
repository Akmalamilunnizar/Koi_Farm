class JenisKoi {
  final int id;
  final String name;

  JenisKoi({
    required this.id,
    required this.name,
  });

  factory JenisKoi.fromJson(Map<String, dynamic> json) {
    return JenisKoi(
      id: json['id'],
      name: json['name'],
    );
  }

  @override
  String toString() {
    return name; // Kembalikan nilai name saat diakses sebagai String
  }
}
