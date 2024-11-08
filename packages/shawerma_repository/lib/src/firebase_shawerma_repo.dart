import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shawerma_repository/shawerma_repository.dart';

class FirebaseShawermaRepo implements ShawermaRepo {
  final CollectionReference shawermasCollection =
      FirebaseFirestore.instance.collection('shawermas');

  @override
  Future<List<Shawerma>> getShawermas() async {
    try {
      // استعلام البيانات من Firestore
      QuerySnapshot querySnapshot = await shawermasCollection.get();

      // إذا كانت القائمة فارغة
      if (querySnapshot.docs.isEmpty) {
        log("No shawermas found in Firestore.");
        return [];
      }

      // تحويل البيانات إلى Shawerma باستخدام دالة toShawerma()
      List<Shawerma> shawermas = querySnapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        final shawermaEntity = ShawermaEntity.fromDocument(data);
        return shawermaEntity.toShawerma(); // تحويل ShawermaEntity إلى Shawerma
      }).toList();

      return shawermas;
    } catch (e) {
      log("Error fetching shawermas: $e");
      rethrow;
    }
  }
}
