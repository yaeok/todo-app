import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore {
  Firestore._();

  static DocumentReference<Map<String, dynamic>> get version =>
      FirebaseFirestore.instance.collection('version').doc('app-1.0');

  static CollectionReference<Map<String, dynamic>> get users =>
      version.collection('users');
}
