import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static final _collection = FirebaseFirestore.instance.collection('items');

  static Future<void> addItem(Map<String, dynamic> data) async {
    await _collection.add(data);
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final snapshot = await _collection.get();
    return snapshot.docs.map((doc) => doc.data()).toList();
  }
}
