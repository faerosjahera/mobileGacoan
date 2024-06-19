class Category {
  final int id;
  final String name;
  final String photo;
  late final String photoUrl; // Tambahkan atribut photoUrl

  Category({
    required this.id,
    required this.name,
    required this.photo,
    required this.photoUrl, // Tambahkan atribut photoUrl
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    String photoUrl = ''; // Inisialisasi photoUrl
    String photo = json['photo'];
    if (photo.isNotEmpty) {
      photoUrl = 'http://127.0.0.1:8000/$photo'; // URL lengkap foto
    }

    return Category(
      id: json['id'],
      name: json['name'],
      photo: json['photo'],
      photoUrl: photoUrl, // Assign nilai photoUrl
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'photo': photo,
      'photoUrl': photoUrl, // Sertakan photoUrl dalam hasil toJson
    };
  }
}
