
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Send a message
  Future<void> sendMessage(String message, String userId) {
    return _firestore.collection('messages').add({
      'message': message,
      'userId': userId,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  // Get all messages
  Stream<QuerySnapshot> getMessages() {
    return _firestore.collection('messages').orderBy('timestamp').snapshots();
  }
}
