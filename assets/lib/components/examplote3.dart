import 'package:flutter/material.dart';

class Examplote3 extends StatefulWidget {
  const Examplote3({super.key});

  @override
  ExamploteState3 createState() => ExamploteState3();
}

class ExamploteState3 extends State<Examplote3> {
  bool selected = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
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
          width: 250,
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(120),
              bottomLeft: Radius.circular(120),
            ),
            child: Theme(
              data: Theme.of(context).copyWith(splashColor: Colors.cyan),
              child: InkResponse(radius: 50,
                hoverColor: Colors.teal,
                splashColor: Colors.amber,
                onTap: () {
                },
                child: Container(
                  height: 100,
                  width: 700,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 59, 95),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.design_services, size: 40.0, color: Colors.black),
                        Text(
                          'Diseño',
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
            ),
          ),
        ),
      ],
    );
  }
}
