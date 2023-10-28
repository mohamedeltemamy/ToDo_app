import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreUtils {
  CollectionReference<Map<String, dynamic>> getCollection() {
    return FirebaseFirestore.instance
        .collection("TasksCollection ")
        .withConverter(fromFirestore: fromFirestore, toFirestore: toFirestore);
  }

  addDataToFirestore() {
    return getCollection();
  }

  deleteDataToFirestore() {
    return getCollection();
  }

  getDataToFirestore() {
    return getCollection();
  }

  void fromFirestore() {}

  void toFirestore() {}
}
