import 'package:flutter/material.dart';

import '../model/diagnosa_model.dart';

class DiagnosaViewModel extends ChangeNotifier {
  final _dataDiagnosa = <DiagnosaModel>[];
  List<DiagnosaModel> get dataDiagnosa => List.unmodifiable(_dataDiagnosa);

  void deleteDataDiagnosa() {
    _dataDiagnosa.clear();
    notifyListeners();
  }

  void addDataDiagnosa(DiagnosaModel diagnosa) {
    _dataDiagnosa.add(diagnosa);
    notifyListeners();
  }
}
