import 'dart:io';

import 'package:blood_fighter/Emergency/Components/register_button.dart';
import 'package:blood_fighter/Login/Components/loginbutton.dart';
import 'package:blood_fighter/Register/Components/register_button.dart';
import 'package:blood_fighter/Register/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthServices with ChangeNotifier {
  bool _isLoading = false;
  late String _errorMessage;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future RegisterScreen(
    String email,
    String password,
  ) async {
    setLoading(true);
    try {
      UserCredential authResult =
          await firebaseAuth.createUserWithEmailAndPassword(
        password: password,
        email: email,
      );
      User? users = authResult.user;
      setLoading(false);
      return users;
    } on SocketException {
      setMessage("No internet, please Connect to internet");
    } catch (e) {
      setMessage("Howsfffffff");
    }
    notifyListeners();
  }

  Future LoginButton(String email, String password) async {
    setLoading(true);
    try {
      UserCredential authResult = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      User? users = authResult.user;
      setLoading(false);
      return users;
    } on SocketException {
      setMessage("No internet, please Connect to internet");
    } catch (e) {
      setMessage("Howsfffffff");
    }
    notifyListeners();
  }

  Future logout() async {
    await firebaseAuth.signOut();
  }

  void setLoading(val) {
    _isLoading = val;
    notifyListeners();
  }

  void setMessage(message) {
    _errorMessage = message;
    notifyListeners();
  }

  Stream<User?> get user =>
      firebaseAuth.authStateChanges().map((event) => event);
}
