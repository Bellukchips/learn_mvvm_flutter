import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  //inisialisasi
  int _counter = 1;

  //
  int get counter => _counter;
  //membuat fungsi agar ketika aplikasi di buka maka akan langsung menjalankan fungsi ini
  void insialisasi() {
    _counter = 5;
    notifyListeners();
  }

  //
  void incrementCounter() async {
    //set fungsi busy to true
    setBusy(true);
   await Future.delayed(Duration(seconds: 5));
    _counter += 1;
    //set fungsi busy to false
    setBusy(false);
    notifyListeners();
  }
}
