import '../../shawerma_repository.dart';
import 'macrose.entity.dart';

class ShawermaEntity {
  String shawermaId;
  String picture;
  bool isVeg;
  int spicy;
  String name;
  String description;
  int price;
  int discount;
  Macros macros;

  ShawermaEntity({
    required this.shawermaId,
    required this.picture,
    required this.isVeg,
    required this.spicy,
    required this.name,
    required this.description,
    required this.price,
    required this.discount,
    required this.macros,
  });
  Shawerma toShawerma() {
    return Shawerma(
      shawermaId: shawermaId,
      picture: picture,
      isVeg: isVeg,
      spicy: spicy,
      name: name,
      description: description,
      price: price,
      discount: discount,
      macros: macros,
    );
  }

  Map<String, Object?> toDocument() {
    return {
      'shawermaId': shawermaId,
      'picture': picture,
      'isVeg': isVeg,
      'spicy': spicy,
      'name': name,
      'description': description,
      'price': price,
      'discount': discount,
      'macros': macros.toEntity().toDocument(),
    };
  }

  static ShawermaEntity fromDocument(Map<String, dynamic> doc) {
    return ShawermaEntity(
      shawermaId: doc['shawermaId'],
      picture: doc['picture'],
      isVeg: doc['isVeg'],
      spicy: doc['spicy'],
      name: doc['name'],
      description: doc['description'],
      price: doc['price'],
      discount: doc['discount'],
      macros: Macros.fromEntity(MacrosEntity.fromDocument(doc['macros'])),
    );
  }
}
