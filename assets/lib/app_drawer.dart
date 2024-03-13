import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black87,

      child: ListView(


        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 166, 2),
            ),
            child: Text(
              'Menú',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Inicio',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            leading: const Icon(
              Icons.home,

            ),
            onTap: () => Navigator.pushNamed(context, '/'),
          ),
          ListTile(
            title: const Text(
              'Materiales',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            leading: const Icon(

                Icons.handyman),
            onTap: () => {Navigator.pushNamed(context, '/materiales')},
          ),
          ListTile(
            title: const Text(
              'Servicios Residenciales',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            leading: const Icon(

                Icons.home_repair_service),
            onTap: () => {Navigator.pushNamed(context, '/second')},
          ),
          ListTile(
            title: const Text(
              'Todos los materiales',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            leading: const Icon(
                color: Color.fromARGB(
                  255,
                  5,
                  220,
                  200,
                ),
                Icons.home_repair_service),
            onTap: () => {
              Navigator.pushNamed(context, '/otrapage'),
            },
          ),
          ListTile(
            title: const Text(
              'Calendario',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            leading: const Icon(
                color: Color.fromARGB(
                  255,
                  5,
                  220,
                  200,
                ),
                Icons.calendar_month),
            onTap: () => {Navigator.pushNamed(context, '/calendario')},
          ),

          ListTile(
            title: const Text(
              'Carrito',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            leading: const Icon(

                Icons.shopping_cart_rounded),
            onTap: () => {Navigator.pushNamed(context, '/servicios')},
          ),
        ],
      ),
    );
  }

  widget({required List<Widget> children}) {}
}
