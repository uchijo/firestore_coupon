import 'package:cloud_firestore/cloud_firestore.dart';

class TestRepository {
  Future<String?> fetchTestString() async {
    final testCollection = FirebaseFirestore.instance.collection('test');
    final testDoc = await testCollection.doc('test').get();
    if (!testDoc.exists) {
      return null;
    }
    final data = testDoc.data();
    return data?['test'];
  }
}
