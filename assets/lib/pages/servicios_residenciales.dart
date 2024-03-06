import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../app_drawer.dart';
import '../components/categorias_tab_bar.dart';
import '../components/get_productos.dart';
import '../components/productos_lista.dart';
import '../my_app_bar.dart';

class ServiciosResidenciales extends StatefulWidget {
  const ServiciosResidenciales({super.key});

  @override
  ServiciosResidencialesState createState() => ServiciosResidencialesState();
}

class ServiciosResidencialesState extends State<ServiciosResidenciales> {
  late Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> productos;

  final categorias = ['ACERO', 'CEMENTO', 'PLOMERÍA'];

  @override
  void initState() {
    super.initState();
    productos = getProductos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(titulo: 'Servicios Residenciales'),
      drawer: const AppDrawer(),
      body: FutureBuilder<List<QueryDocumentSnapshot<Map<String, dynamic>>>>(
        future: productos,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return DefaultTabController(
              length: 3,
              child: Column(
                children: <Widget>[
                  CategoriasTabBar(categorias: categorias),
                  Expanded(
                    child: TabBarView(
                      children: categorias.map((categoria) {
                        return ProductosLista(productos: snapshot.data!, categoria: categoria);
                      }).toList(),
                    ),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          // Mostrar un indicador de carga mientras se obtienen los datos
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

