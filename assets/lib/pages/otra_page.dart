import 'package:flutter/material.dart';
import 'package:materialmairos/app_drawer.dart';
import '../../my_app_bar.dart';
import 'productos_page.dart';
class OtraPage extends StatelessWidget {
  const OtraPage
      ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const AppDrawer(),
      appBar:  MyAppBar(titulo: 'Otra Page'),
      body: Column(
        children: <Widget>[
          Container(),
          Padding(
            padding:  const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Container(
              child:
              ProductosPage(),
              width: 100,
              height: 100,
              color: Colors.redAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const  EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: ElevatedButton(
                onPressed: () {  }, child: null,
              ),
            ),
          ),
        ],
      ),
      );





  }
}
