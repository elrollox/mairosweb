import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../my_app_bar.dart';
import '/app_drawer.dart';

class Servicios extends StatelessWidget {
  const Servicios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: MyAppBar(titulo: 'Carrito'),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('mairos').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            print('Error: ${snapshot.error}');
            return const Text('Algo salió mal');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            print('Stream still loading');
            return const Text("Cargando");
          }

          if (snapshot.data == null) {
            print('Snapshot data is null');
            return const Text("No hay datos");
          }

          print('Data loaded: ${snapshot.data!.docs.length} documents found');

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data = document.data() as Map<String, dynamic>;
              print('Document data: $data');

              // Comprueba si 'NOMBRE' y 'CANTIDAD' son null antes de usarlos
              String nombre = data['NOMBRE'] ?? 'Nombre no disponible';
              String cantidad = data['CANTIDAD'] != null ? data['CANTIDAD'].toString() : 'Cantidad no disponible';

              return ListTile(
                title: Text(nombre),
                subtitle: Text('Cantidad disponible: $cantidad'),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
