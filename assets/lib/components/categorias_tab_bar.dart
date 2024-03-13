import 'package:flutter/material.dart';

class CategoriasTabBar extends StatelessWidget {
  final List<String> categorias;

  const CategoriasTabBar({
    super.key,
    required this.categorias,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelStyle: const TextStyle(color: Colors.white),


      dividerHeight: 66,
      dividerColor: Colors.orange,
      tabAlignment: TabAlignment.fill,
      labelStyle:


      const TextStyle(
        color: Colors.white,
          fontWeight:FontWeight.w900,
          fontSize: 16,
          fontFamily: 'Poppins',
       ),
      padding: const EdgeInsets.symmetric(vertical: 8),
      splashBorderRadius: BorderRadius.circular(13),
      labelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.white,
      tabs: categorias.map((categoria) {
        return Tab(

          iconMargin: EdgeInsetsDirectional.zero,
          text:  (categoria));
      }).toList(),
    );
  }
}
