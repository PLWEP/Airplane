import 'package:airplane/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  final CollectionReference _userReferences =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReferences.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      rethrow;
    }
  }
}
