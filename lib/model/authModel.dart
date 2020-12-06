import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat_app/enum/appState.dart';

import 'baseModel.dart';

class AuthModel extends BaseModel {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  void createNewUser(String email, String password) async {
    setViewState(ViewState.Busy);
    await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    setViewState(ViewState.Ideal);
  }

  void signIn(String email, String password) async {
    setViewState(ViewState.Busy);
    await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    setViewState(ViewState.Ideal);
  }

  void logOut() async {
    setViewState(ViewState.Busy);
    await firebaseAuth.signOut();
    setViewState(ViewState.Ideal);
  }
}
