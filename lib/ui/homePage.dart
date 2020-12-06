import 'package:flutter/material.dart';
import 'package:flutter_chat_app/model/authModel.dart';
import 'package:flutter_chat_app/ui/baseView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<AuthModel>(
      builder: (context, model, __) => Scaffold(
        body: Center(
          child: RaisedButton(
            color: Colors.cyanAccent,
            child: Text("Log Out"),
            onPressed: () {
              model.logOut();
            },
          ),
        ),
      ),
    );
  }
}
