import '../entities/entities.dart';
import 'models.dart';

class Shawerma {
  String shawermaId;
  String picture;
  bool isVeg;
  int spicy;
  String name;
  String description;
  int price;
  int discount;
  Macros macros;

  Shawerma({
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

  ShawermaEntity toEntity() {
    return ShawermaEntity(
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

  static Shawerma fromEntity(Shawerma entity) {
    return Shawerma(
      shawermaId: entity.shawermaId,
      picture: entity.picture,
      isVeg: entity.isVeg,
      spicy: entity.spicy,
      name: entity.name,
      description: entity.description,
      price: entity.price,
      discount: entity.discount,
      macros: entity.macros,
    );
  }
}
