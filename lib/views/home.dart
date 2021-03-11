import 'package:flutter/material.dart';
import 'package:learn_mvvm/providers/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.insialisasi(),
      builder: (ctx, model, child) {
        return Scaffold(
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: ()=> model.incrementCounter(),
            ),
            body: Container(
              child: Center(
                //menambahkan fungsi busy agar ketika data delay maka akan muncul indicator loading

                child: model.isBusy ? Text('Loading..',style:TextStyle(fontSize: 20)) : Text('${model.counter}',style:TextStyle(fontSize: 20)),
              ),
            ));
      },
    );
  }
}
