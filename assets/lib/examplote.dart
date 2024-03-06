import 'package:flutter/material.dart';

class Examplote extends StatefulWidget {
  const Examplote({super.key});

  @override
  ExamploteState createState() => ExamploteState();
}

class ExamploteState extends State<Examplote> {
  bool selected = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        selected = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          right: selected ? -0 : -500,
          width: 150,
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: Container(
            height: 100,
            width: 700,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 139, 253, 232),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(120),
                bottomLeft: Radius.circular(120),
              ),
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.clean_hands_sharp, size: 40.0, color: Colors.black), // Puedes cambiar esto por el ícono que prefieras
                  Text(
                    'Servicios',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
