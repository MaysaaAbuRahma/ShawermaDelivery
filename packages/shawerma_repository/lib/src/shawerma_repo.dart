import 'models/models.dart';

abstract class ShawermaRepo {
  Future<List<Shawerma>> getShawermas();
}
