import 'package:flutter/material.dart';
import 'package:flutter_chat_app/locator.dart';
import 'package:flutter_chat_app/model/baseModel.dart';
import 'package:provider/provider.dart';

class BaseView<T extends BaseModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget child) builder;

  BaseView({
    @required this.builder,
  });

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseModel> extends State<BaseView<T>> {
  T model = locator<T>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      //builder: (context) => model,
      child: Consumer<T>(builder: widget.builder),
      //notifier: model,
      value: model,
    );
  }
}
