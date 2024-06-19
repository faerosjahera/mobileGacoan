class Product {
  final int id;
  final int categoryId;
  final String name;
  final String description;
  final double price;
  final String photo;
  late final String photoUrl; // Tambahkan atribut photoUrl
  final String ket; // Tambahkan atribut ket

  Product({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.price,
    required this.photo,
    required this.photoUrl, // Tambahkan atribut photoUrl
    required this.ket, // Tambahkan atribut ket
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    print(json); // Tambahkan ini untuk memeriksa data yang diterima
    String photoUrl = '';
    String photo = json['photo'];
    if (photo.isNotEmpty) {
      photoUrl = 'http://127.0.0.1:8000/$photo';
    }

    return Product(
      id: json['id'],
      categoryId: json['category_id'],
      name: json['name'],
      description: json['description'],
      price: (json['price'] is String)
          ? double.parse(json['price'])
          : json['price'].toDouble(),
      photo: json['photo'],
      photoUrl: photoUrl,
      ket: json['ket'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category_id': categoryId,
      'name': name,
      'description': description,
      'price': price,
      'photo': photo,
      'photoUrl': photoUrl, // Sertakan photoUrl dalam hasil toJson
      'ket': ket, // Sertakan ket dalam hasil toJson
    };
  }
}
