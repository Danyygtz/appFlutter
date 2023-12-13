import 'package:flutter/material.dart';
import 'package:topicos/main.dart';
import 'package:topicos/utilities/counter.dart';
import 'package:topicos/utilities/carousel.dart';

void main() {
  runApp(const FirstScreen());
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}

class _FirstScreen extends State<FirstScreen> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff00bfa5),
          leading: Row(
            children: <Widget>[
              const SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.auto_awesome_outlined,
                color: Color(0xffe0f2f1),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Color(0xffa7ffeb),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CarouselWithIndicatorDemo(),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      )),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Stickers +Kotas',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text('1 paquete de stickers'),
                          const SizedBox(
                            height: 20.0,
                          ),
                          CounterDesign(),
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            'Paquete de Stickers',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          const Text(
                            '¿Te gustan los animales domésticos? ¿Quieres expresar tu amor por ellos de una forma original y divertida? '
                            'Entonces este paquete de stickers es para ti.'
                            'Este paquete contiene 3 stickers de alta calidad, '
                            'con diseños únicos y variados de diferentes animales domésticos, como perros, gatos, hamsters.',
                            style:
                                TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: const BorderSide(color: Color.fromRGBO(100, 255, 218, 1)),
                                  ), backgroundColor: Color(0xFF1de9b6),
                                  minimumSize: const Size(70.0, 70.0),
                                  elevation: 0.0,
                                ),
                                onPressed: _toggleFavorite,
                                child: Icon(
                                  _isFavorited ? Icons.favorite_border : Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 20.0),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ), backgroundColor: Color(0xFF1de9b6),
                                  minimumSize: const Size(150.0, 70.0),
                                  elevation: 0.0,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Comprar',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(width: 20.0),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ), backgroundColor: Color(0xff00bfa5),
                                  minimumSize: const Size(60.0, 70.0),
                                  elevation: 0.0,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Reservar',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}