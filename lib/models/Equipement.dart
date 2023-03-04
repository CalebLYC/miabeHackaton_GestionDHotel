class Equipement {
  final int? id;
  final String imageUrl;
  final int categoryId;
  final String? name;
  final double price;
  final String? location;
  final bool? isAvailable;
  final int? hotelId;

  const Equipement({
    this.id,
    required this.imageUrl,
    required this.categoryId,
    this.name,
    required this.price,
    this.location,
    this.isAvailable,
    this.hotelId,
  });

  factory Equipement.fromMap(Map<String, dynamic> json) => Equipement(
        id: json['id'],
        imageUrl: json['imageUrl'],
        price: json['price'],
        name: json['name'],
        location: json['location'],
        isAvailable: json['isAvailable'],
        categoryId: json['categoryId'],
        hotelId: json['hotelId'],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'imageUrl': imageUrl,
      'categoryId': categoryId,
      'name': name,
      'price': price,
      'location': location,
      'isAvailable': isAvailable,
      'hotelId': hotelId,
    };
  }
}
