import 'package:flutter/material.dart';

class CategoriasTabBar extends StatelessWidget {
  final List<String> categorias;

  const CategoriasTabBar({
    Key? key,
    required this.categorias,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: categorias.map((categoria) {
        return Tab(text: categoria);
      }).toList(),
    );
  }
}
