import 'package:flutter/material.dart';

class InteractiveBackground extends StatefulWidget {
  const InteractiveBackground({super.key});

  @override
  InteractiveBackgroundState createState() => InteractiveBackgroundState();
}

class InteractiveBackgroundState extends State<InteractiveBackground> {
  Offset _position = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MouseRegion(
          onHover: (event) {
            setState(() {
              _position = event.localPosition;
            });
          },
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final size = constraints.biggest;
              final alignment = Alignment(
                _position.dx / size.width * 2 - 1,
                _position.dy / size.height * 2 - 1,
              );

              return Stack(
                children: [
                  Image.asset('assets/images/POSTRE2.jpg'),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return RadialGradient(
                        center: alignment,
                        radius: 0.2,
                        colors: <Color>[
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.5),
                          Colors.transparent
                        ],
                        stops: const <double>[0.0, 0.3, 0.6, 1.0],
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.dstOut,
                    child: Container(
                      color: Colors.black.withOpacity(0.95),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
