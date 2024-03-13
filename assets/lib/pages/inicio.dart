import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';

import 'package:latlong2/latlong.dart';
import 'package:materialmairos/pages/Servicios/servicios.dart';
import 'package:materialmairos/pages/Servicios/servicios_residenciales.dart';
import 'package:materialmairos/pages/otra_page.dart';

import '../app_drawer.dart';
import '../avatar_row.dart';
import '../avatar_row2.dart';
import '../my_app_bar.dart';
import 'materiales.dart';




class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  InicioState createState() => InicioState();
}

class InicioState extends State<Inicio> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  LatLng? ubicacion;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
        drawer: const AppDrawer(),
        appBar: MyAppBar(titulo: 'MairosApp'),
        floatingActionButton: FloatingActionButton(
          highlightElevation: 12,
          backgroundColor: Colors.green,
          splashColor: Colors.greenAccent,
          child: Image(
              image: AssetImage('lib/assets/images/primeras/camionsito.png')),
          onPressed: () => {},
        ),
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 22),
                        const Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                        width: 300,
                                        child: Text(
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w800),
                                            '¡Todo lo necesario para construir,'
                                                ' en la palma de tu mano!')),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Center(
                          child: AvatarRow2(
                            imageUrls: [
                              'lib/assets/images/materiales_herramientas.png',
                              'lib/assets/images/Group 8.png',
                              'lib/assets/images/icono ARQUITECTURA Y CONSTRUCCIÓN.png'
                            ],
                            texts: [
                              'Materiales y'
                                  ' Herramientas',
                              'Mantenimiento '
                                  'Residencial',
                              'Arquitectura y '
                                  'Construcción',
                            ],
                            pages: [Materiales(), ServiciosResidenciales(), OtraPage()],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),


                SizedBox(
                  width: 800,
                  height: 400,
                  child: FlutterMap(
                    options: MapOptions(
                      applyPointerTranslucencyToLayers: true,
                      initialCenter: LatLng(20.51744490025538, -99.89711964038747),
                      initialZoom: 15.0,


                    ),
                    children: [
                      TileLayer(
                        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'com.example.app',
                      ),


                    ],
                  ),
                )

                      ,




                        const SizedBox(height: 30),
                        const Center(
                          child: AvatarRow(
                            imageUrls: [
                              'lib/assets/images/cemento.png',
                              'lib/assets/images/plomeria.png',
                              'lib/assets/images/arquitectonico.png',
                            ],
                            texts: [
                              'Cementos',
                              'Plomería',
                              'Diseño Arq',
                            ],
                            pages: [
                              ServiciosResidenciales(),
                              Servicios(),
                              Materiales(),
                            ],
                          ),
                        ),
                        ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
