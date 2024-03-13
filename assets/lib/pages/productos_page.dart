import 'package:flutter/material.dart';
import 'package:materialmairos/my_app_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<Map<String, List<Map<String, dynamic>>>> obtenerColeccionesYDocumentos() async {
  var firestore = FirebaseFirestore.instance;
  var colecciones = ['acero', 'adhesivos', 'artefactos', 'cemento', 'envasados_diversos', 'envasados_premezclados', 'gravas_arenas', 'herramienta', 'luminaria', 'madera', 'prefabricados', 'pvc', 'sistemas_ligeros', 'soldadura', 'tabique'];
  var datos = <String, List<Map<String, dynamic>>>{};

  for (var coleccion in colecciones) {
    var coleccionRef = firestore.collection(coleccion);
    var querySnapshot = await coleccionRef.get();
    datos[coleccion] = querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  }

  return datos;
}

Map<String, List<Map<String, dynamic>>> agruparProductosPorSubcategoria(List<Map<String, dynamic>> productos) {
  Map<String, List<Map<String, dynamic>>> productosPorSubcategoria = {};

  for (var producto in productos) {
    // Proporciona un valor por defecto en caso de que 'SUBCATEGORÍA' sea null
    var subcategoria = producto['SUBCATEGORÍA'] ?? 'Sin subcategoría';
    if (productosPorSubcategoria.containsKey(subcategoria)) {
      productosPorSubcategoria[subcategoria]!.add(producto);
    } else {
      productosPorSubcategoria[subcategoria] = [producto];
    }
  }

  return productosPorSubcategoria;
}





class ProductosPage extends StatefulWidget {
  const ProductosPage({super.key});

  @override
  State<ProductosPage> createState() => _ProductosPageState();
}

class _ProductosPageState extends State<ProductosPage> {

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            appBar: MyAppBar(titulo: 'Todos los materiales',),
            body:
            FutureBuilder(
              future: obtenerColeccionesYDocumentos(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data.keys.length,
                    itemBuilder: (BuildContext context, int index) {
                      var categoria = snapshot.data.keys.elementAt(index);
                      var productos = snapshot.data[categoria];
                      var productosPorSubcategoria = agruparProductosPorSubcategoria(productos);
                      // Elimina los guiones bajos y convierte la cadena a mayúsculas
                      var nombreCategoria = categoria.replaceAll('_', ' ').toUpperCase();
                      return ExpansionTile(
                        iconColor: Colors.black,
                        collapsedIconColor: Colors.black,
                        title: Text (nombreCategoria,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                            fontSize: 18,
                        ),
                        ),
                        children: productosPorSubcategoria.entries.map<Widget>((entry) {
                          var subcategoria = entry.key ?? 'Sin subcategoría';
                          var productos = entry.value;
                          return ExpansionTile(
                            collapsedIconColor: Colors.black,
                            iconColor: Colors.black,
                            title: Text(subcategoria,
                            style: TextStyle(
                          color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                          ),
                            ),
                            children: productos.map<Widget>((producto) {
                              var nombre = producto['NOMBRE'] ?? 'Sin nombre';
                              return ListTile(

                                iconColor: Colors.black,
                                title: Text(nombre,
                                style: TextStyle(
                                  color: Colors.black
                                ),
                                ),
                                trailing: IconButton(
                                icon: Icon(Icons.add_shopping_cart),
                              onPressed: () {
    print('Producto ${nombre} añadido al carrito');
    },
    ),


                              );
                            }).toList(),
                          );
                        }).toList(),
                      );
                    },
                  );


                }
              },
            )


        )
    );

  }
}
