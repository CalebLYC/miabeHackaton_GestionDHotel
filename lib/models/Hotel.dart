class Hotel {
  final int? id;
  final String name;
  final String description;
  final String town;
  final double? longitude;
  final double? latitude;
  final String? address;
  final int? views;
  final int? reviews;
  final int? stars;
  final String imageUrl;

  const Hotel({
    this.id,
    required this.name,
    required this.description,
    required this.town,
    this.longitude,
    this.latitude,
    this.address,
    this.views,
    this.reviews,
    this.stars,
    required this.imageUrl,
  });

  factory Hotel.fromMap(Map<String, dynamic> json) => Hotel(
        id: json['id'],
        name: json['name'],
        description: json['descripion'],
        town: json['town'],
        longitude: json['longitude'],
        latitude: json['latitude'],
        address: json['adress'],
        views: json['views'],
        reviews: json['reviews'],
        stars: json['stars'],
        imageUrl: json['imageUrl'],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'town': town,
      'longitude': longitude,
      'latitude': latitude,
      'address': address,
      'views': views,
      'reviews': reviews,
      'stars': stars,
      'imageUrl': imageUrl,
    };
  }
}
