import 'package:flutter/material.dart';
import 'dart:math' as math;

class CircularProgressDialog extends StatelessWidget {

  double container_width = 0.0;
  double container_height = 0.0;

  double icon_size = 0.0;

  Color icon_color ;


  CircularProgressDialog({super.key,
      required this.container_width,
      required this.container_height,
      required this.icon_size,
      required this.icon_color});

/*  CircularProgressDialog({super.key});*/
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage(container_width:container_width,
            container_height: container_height,
            icon_size:icon_size,
            icon_color: icon_color),
    );
  }
}

class MyHomePage extends StatefulWidget {

  double container_width = 0.0;
  double container_height = 0.0;

  double icon_size = 0.0;

  Color icon_color ;


  MyHomePage({super.key,
    required this.container_width,
    required this.container_height,
    required this.icon_size,
    required this.icon_color});

/*  const MyHomePage({super.key});*/

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat();


  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {

      showDialog(
        barrierColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            content: Container(
              width: widget.container_width,
              height: widget.container_height,
              child: Center(
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (_, child) {
                    return Transform.rotate(
                      angle: _controller.value * 2 * math.pi,
                      child: child,
                    );
                  },
                  child: Container(
                    width: widget.container_width,
                    height: widget.container_height,
                    child: Icon(
                      Icons.incomplete_circle_outlined,
                      color: widget.icon_color,
                      size: widget.icon_size,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ).then((value) {
        Navigator.pop(context);
      });

    });
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox();
  }

}

