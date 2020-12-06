import 'package:flutter_chat_app/model/authModel.dart';
import 'package:flutter_chat_app/model/authStateModel.dart';
import 'package:flutter_chat_app/model/baseModel.dart';
import 'package:get_it/get_it.dart';


final locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => BaseModel());
  locator.registerLazySingleton(() => AuthModel());
  locator.registerLazySingleton(() => AuthStateModel());
}