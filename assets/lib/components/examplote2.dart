import 'package:flutter/material.dart';

class Examplote2 extends StatefulWidget {
  const Examplote2({super.key});

  @override
  ExamploteState2 createState() => ExamploteState2();
}

class ExamploteState2 extends State<Examplote2> {
  bool selected = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
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
          width: 200,
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: Container(
            height: 100,
            width: 700,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 252, 186, 0),
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
