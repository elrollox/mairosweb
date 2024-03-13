import 'package:flutter/material.dart';
import 'package:materialmairos/components/fill_image_card.dart';
import '../app_drawer.dart';
import '../my_app_bar.dart';

class Materiales extends StatelessWidget {

  const Materiales({super.key});



  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        appBar: MyAppBar(titulo: 'Materiales'),
        drawer: const AppDrawer(),

        body: const SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [

                SizedBox(height: 22),

                ColoredBox(
                  color: Colors.green,
                  child: Row(

                    children: [
                      Text(
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 33,
                            color: Colors.white,

                          ),
                          'Material de construcción'),
                    ],
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      SizedBox(
                      width: 130,
                      height: 190,
                      child: AspectRatio(
                        aspectRatio: 1, // Establece la proporción que desees aquí
                        child: CircleAvatar(
                          backgroundImage:
                           AssetImage('lib/assets/images/icono acero.png'),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 160,),
                              Text(
                                'Acero',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  ),
                                ),
                            ],
                          ),
                          ),
                        ),),
                        SizedBox(width: 12),
                        SizedBox(
                          width: 130,
                          height: 190,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage('lib/assets/images/icono acero.png'),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 160,),
                                  Text(
                                    'Cemento',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        SizedBox(
                          width: 130,
                          height: 190,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage('lib/assets/images/icono acero.png'),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 160,),
                                  Text(
                                    'Adhesivos',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        SizedBox(
                          width: 130,
                          height: 190,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage('lib/assets/images/icono acero.png'),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 160,),
                                  Text(
                                    'Envasados',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        SizedBox(
                          width: 130,
                          height: 190,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child:CircleAvatar(
                              backgroundImage:
                              AssetImage('lib/assets/images/icono acero.png'),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 160,),
                                  Text(
                                    'Gravas',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        SizedBox(
                          width: 130,
                          height: 190,  child: AspectRatio(
                          aspectRatio: 1,
                          child: CircleAvatar(
                            backgroundImage:
                            AssetImage('lib/assets/images/icono acero.png'),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 160,),
                                Text(
                                  'Prefabricados',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ),
                        ),
                        SizedBox(width: 12),
                        SizedBox(
                          width: 130,
                          height: 190,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage('lib/assets/images/icono acero.png'),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 160,),
                                  Text(
                                    'Tabique',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ),)
                        ),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 55),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 12),
                      SizedBox(
                        width: 130,
                        height: 190,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: CircleAvatar(
                            backgroundImage:
                            AssetImage('lib/assets/images/icono acero.png'),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 160,),
                                Text(
                                  'Ligeros',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),)
                      ),
                      SizedBox(width: 12),
                      SizedBox(
                        width: 130,
                        height: 190,  child: AspectRatio(
                        aspectRatio: 1,
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage('lib/assets/images/icono acero.png'),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 160,),
                              Text(
                                'Madera',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),
                      SizedBox(width: 12),
                      SizedBox(
                        width: 130,
                        height: 190,  child: AspectRatio(
                        aspectRatio: 1,
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage('lib/assets/images/icono acero.png'),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 160,),
                              Text(
                                'Herramienta',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          ),
                        ),)
                      ),
                      SizedBox(width: 12),
                      SizedBox(
                        width: 130,
                        height: 190,  child: AspectRatio(
                        aspectRatio: 1,
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage('lib/assets/images/icono acero.png'),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 160,),
                              Text(
                                'PVC',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),
                      SizedBox(width: 12),
                      SizedBox(
                        width: 130,
                        height: 190,  child: AspectRatio(
                        aspectRatio: 1,
                        child: CircleAvatar(
                          backgroundImage:
                          AssetImage('lib/assets/images/icono acero.png'),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 160,),
                              Text(
                                'Eléctricos',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],

            ),
          ),
        ));
  }


}
