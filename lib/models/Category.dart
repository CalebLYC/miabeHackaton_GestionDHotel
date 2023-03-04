class Category {
  final int? id;
  final String libelle;

  const Category({
    this.id,
    required this.libelle,
  });

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json['id'],
        libelle: json['libelle'],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      libelle: libelle,
    };
  }
}
