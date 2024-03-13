import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../app_drawer.dart';
import '../../components/categorias_tab_bar.dart';
import '../../components/get_productos_acero.dart';
import '../../components/get_productos_adhesivos.dart';
import '../../components/get_productos_artefactos.dart';

import '../../components/productos_lista.dart';
import '../../my_app_bar.dart';

class ServiciosResidenciales extends StatefulWidget {
  const ServiciosResidenciales({super.key});

  @override
  ServiciosResidencialesState createState() => ServiciosResidencialesState();
}

class ServiciosResidencialesState extends State<ServiciosResidenciales> {
  late Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> productosAcero;
  late Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> productosAdhesivos;
  late Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> productosArtefactos;

  final categorias = ['ACERO', 'ADHESIVOS', 'ARTEFACTOS ELÉCTRICOS'];


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
          length: 3,
          child: Scaffold(
          appBar: AppBar(
          title: Text('Servicios Residenciales'),
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.card_giftcard)),
          Tab(icon: Icon(Icons.comment)),
          Tab(icon: Icon(Icons.computer)),
        ],
      ),
    ),
    body: TabBarView(
    children: [
    Icon(Icons.card_giftcard),
    Icon(Icons.comment),
    Icon(Icons.computer),
    ],
    ),
          ),
    );
  }
}
