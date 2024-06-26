import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  User? user = FirebaseAuth.instance.currentUser;
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  Future<void> saveOrderToDatabase(String receipt) async {
    await orders.add({
      'date': DateTime.now(),
      'order': receipt,
      'userId': user!.uid,
      'email': user!.email,
    });
  }

  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  Future<void> saveUserAddress(String address) async {
    await users.doc(user!.uid).set({
      'address': address,
    }, SetOptions(merge: true));
  }

  Future<String> getUserAddress() async {
    DocumentSnapshot userDoc = await users.doc(user!.uid).get();
    return userDoc['address'] ?? 'No Address Found';
  }
}
