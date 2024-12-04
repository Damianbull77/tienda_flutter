import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<User?> registerUser(
      String fullName, String email, String password) async {
    try {
      final UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      final user = userCredential.user;

      if (user != null) {
        await _firestore.collection('users').doc(user.uid).set({
          'nombre': fullName,
          'email': email,
        });
      }

      return user;
    } catch (e) {
      print('error al registrar usuario $e');
      return null;
    }
  }

  Future<User?> loginUser(String email, String password) async {
    try {
      final UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } catch (e) {
      print('Error al iniciar sesión: $e');
      return null;
    }
  }

  Future<DocumentSnapshot?> getClientData(String userId) async {
    try {
      return await _firestore.collection('cliente').doc(userId).get();
    } catch (e) {
      print("error  al obtener datos del usuario $e");
      rethrow;
    }
  }
}
