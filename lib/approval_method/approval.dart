import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  CollectionReference seller =
      FirebaseFirestore.instance.collection("seller_info");

  Future<void> approveSeller(
      {CollectionReference? reference,
      Map<String, dynamic>? data,
      String? docName}) {
    return reference!.doc(docName).update(data!);
  }
}
