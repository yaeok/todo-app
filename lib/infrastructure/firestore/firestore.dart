import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore {
  Firestore._();

  static DocumentReference<Map<String, dynamic>> get version =>
      FirebaseFirestore.instance.collection('version').doc('app-1.0');

  static CollectionReference<Map<String, dynamic>> get users =>
      FirebaseFirestore.instance.collection('users');
}

class FirestoreField {
  static DateTime? fromTimestamp(Timestamp? timestamp) {
    if (timestamp == null) {
      return null;
    }
    return DateTime.fromMillisecondsSinceEpoch(
        timestamp.millisecondsSinceEpoch);
  }

  static Timestamp? toTimestampJson(DateTime? datetime) {
    if (datetime == null) {
      return null;
    }
    return Timestamp.fromMillisecondsSinceEpoch(
      datetime.millisecondsSinceEpoch,
    );
  }
}
