import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingupRepo {
  Future<void> createUser(String name, String email, String phonenumber,
      String password, BuildContext context) async {
    final _auth = FirebaseAuth.instance;
    final CollectionReference userRef =
        FirebaseFirestore.instance.collection('usercollection');
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await userRef.doc(userCredential.user!.uid).set({
        'userid': _auth.currentUser!.uid,
        'username': name,
        'email': email,
        'phone': phonenumber,
        'password': password,
      });
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.code)));
    }
  }
}
