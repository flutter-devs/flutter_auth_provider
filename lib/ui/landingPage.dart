import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/model/authModel.dart';
import 'package:flutter_chat_app/ui/authPage.dart';

import 'package:flutter_chat_app/ui/baseView.dart';
import 'package:flutter_chat_app/ui/homePage.dart';

// ignore: must_be_immutable
class LandingPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<AuthModel>(
      builder: (context, authModel, child) => StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? HomePage()
                : AuthPage(
                    emailController: emailController,
                    passwordController: passwordController,
                    authModel: authModel,
                  );
          }),
    );
  }
}

// class LoginModel extends BaseModel {
//   FirebaseAuth firebaseAuth;
//
//   login(String email, String password) async {
//     setViewState(ViewState.Busy);
//     await firebaseAuth.signInWithEmailAndPassword(
//         email: email, password: password);
//     setViewState(ViewState.Ideal);
//   }
// }
