import 'package:flutter/foundation.dart';

class DoneModuleProvider extends ChangeNotifier {
  final List<String> _doneModuleList = [];

  List<String> get doneModuleList => _doneModuleList;

  void complete(String moduleName) {
    //method penambah ke module list
    _doneModuleList.add(moduleName);
    notifyListeners();
  }
}
