import 'package:flutter/material.dart';
import 'package:flutter_chat_app/enum/appState.dart';

class BaseModel extends ChangeNotifier {
  ViewState _viewState;

  ViewState get viewState => _viewState;

  setViewState(ViewState viewState) {
    _viewState = viewState;
    notifyListeners();
  }

  AuthState _authState;

  AuthState get authState => _authState;

  setAuthState(AuthState authState) {
    _authState = authState;
    notifyListeners();
  }
}
