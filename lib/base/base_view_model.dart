
import 'package:auto_group/response/repository.dart';
import 'package:flutter/widgets.dart';

typedef ErrorCallback = Function(String?);
typedef SuccessCallback = Function(dynamic);
typedef OnLoadedCallback = Function();

class BaseViewModel extends ChangeNotifier {
  final Repository repository;

  BaseViewModel(this.repository);

  bool _loading = false;

  set setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }
}
