

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductosLista extends StatelessWidget {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> productos;
  final String categoria;

  const ProductosLista({
    super.key,
    required this.productos,
    required this.categoria,
  });

  @override
  Widget build(BuildContext context) {
    final productosFiltrados = productos.where((producto) {
      final productoData = producto.data();
      return productoData.containsKey('CATEGORÍA') &&
          productoData['CATEGORÍA'] == categoria;
    }).toList();

    return ListView.builder(
      itemCount: productosFiltrados.length,
      itemBuilder: (context, index) {
        final producto = productosFiltrados[index].data();
        if (producto.containsKey('NOMBRE')) {
          return ListTile(
            key: ValueKey(producto['NOMBRE']), // Usar un valor único para la clave
            title: Text(
              producto['NOMBRE'],
              style: const TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              producto['CATEGORÍA'],
              style: const TextStyle(color: Colors.black54),
            ),
          );
        } else {
          return const ListTile(
            title: Text('Documento sin nombre'),
          );
        }
      },
    );
  }
}