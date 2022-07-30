import 'package:ditredi/ditredi.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = DiTreDiController(
    rotationX: -20,
    rotationY: 30,
    light: vector.Vector3(-0.5, -0.5, 0.5),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      title: 'DiTreDi Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Flex(
            crossAxisAlignment: CrossAxisAlignment.start,
            direction: Axis.vertical,
            children: [
              Expanded(
                child: DiTreDiDraggable(
                  controller: _controller,
                  child: DiTreDi(
                    figures: [
                      ...kursi(positionOne: 0, potitionThree: 0),
                      ...kursi(positionOne: 0, potitionThree: 50),
                      ...kursi(positionOne: 50, potitionThree: 0),
                      ...kursi(positionOne: 50, potitionThree: 50),
                      ...kursi(positionOne: 100, potitionThree: 0),
                      ...kursi(positionOne: 100, potitionThree: 50),
                      ...kursi(positionOne: 150, potitionThree: 0),
                      ...kursi(positionOne: 150, potitionThree: 50),
                      ...kursi(positionOne: 200, potitionThree: 0),
                      ...kursi(positionOne: 200, potitionThree: 50),

                      ...kursi(positionOne: 0, potitionThree: 100),
                      ...kursi(positionOne: 0, potitionThree: 150),

                      ...kursi(positionOne: 0, potitionThree: 200),
                      ...kursi(positionOne: 0, potitionThree: 250),

                      ...kursi(positionOne: 0, potitionThree: 300),
                      ...kursi(positionOne: 0, potitionThree: 350),
                      ...kursi(positionOne: 50, potitionThree: 300),
                      ...kursi(positionOne: 50, potitionThree: 350),
                      ...kursi(positionOne: 100, potitionThree: 300),
                      ...kursi(positionOne: 100, potitionThree: 350),
                      ...kursi(positionOne: 150, potitionThree: 300),
                      ...kursi(positionOne: 150, potitionThree: 350),


                      /// meja
                    ],
                    controller: _controller,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Drag to rotate. Scroll to zoom"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

makeObject({
  required int length,
  double size = 2,
  required double potitionOne,
  required double potitionTwo,
  required double potitionThree,
  Color? colors,
  List<String>? increasesData,
}) {
  increasesData ??= [];
  late List datas = [];
  for (var i = 0; i < length; i++) {
    if (i > 0) {
      if (increasesData.contains("one")) {
        potitionOne += 2;
      }
      if (increasesData.contains("two")) {
        potitionTwo += 2;
      }
      if (increasesData.contains("three")) {
        potitionThree += 2;
      }
    }
    datas.add(Cube3D(size, vector.Vector3(potitionOne, potitionTwo, potitionThree), color: colors));
  }
  return datas;
}

kursi({
  double positionOne = 0,
  double potitionTwo = 0,
  double potitionThree = 0,
}) {
  return [
    ...makeObject(
      length: 25,
      potitionOne: positionOne + 20,
      potitionTwo: potitionTwo,
      potitionThree: potitionThree + 20,
      increasesData: ["two"],
    ),
    ...makeObject(
      length: 25,
      potitionOne: positionOne + 20,
      potitionTwo: potitionTwo,
      potitionThree: potitionThree,
      increasesData: ["two"],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne,
      potitionTwo: potitionTwo,
      potitionThree: potitionThree + 20,
      increasesData: ["two"],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne,
      potitionTwo: potitionTwo,
      potitionThree: potitionThree,
      increasesData: ["two"],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 12,
      potitionThree: potitionThree,
      increasesData: ["one"],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 12,
      potitionThree: potitionThree + 20,
      increasesData: ["one"],
    ),
    ...makeObject(
      length: 11,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 20,
      potitionThree: potitionThree,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 20,
      potitionThree: potitionThree + 2,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 20,
      potitionThree: potitionThree + 4,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 20,
      potitionThree: potitionThree + 6,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 20,
      potitionThree: potitionThree + 8,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 20,
      potitionThree: potitionThree + 10,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 20,
      potitionThree: potitionThree + 12,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 20,
      potitionThree: potitionThree + 14,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 20,
      potitionThree: potitionThree + 16,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 20,
      potitionThree: potitionThree + 18,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne + 20,
      potitionTwo: potitionTwo + 25,
      potitionThree: potitionThree,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne + 20,
      potitionTwo: potitionTwo + 38,
      potitionThree: potitionThree,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne + 20,
      potitionTwo: potitionTwo + 40,
      potitionThree: potitionThree,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne + 20,
      potitionTwo: potitionTwo + 42,
      potitionThree: potitionThree,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne + 20,
      potitionTwo: potitionTwo + 44,
      potitionThree: potitionThree,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne + 20,
      potitionTwo: potitionTwo + 46,
      potitionThree: potitionThree,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne + 20,
      potitionTwo: potitionTwo + 48,
      potitionThree: potitionThree,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne + 20,
      potitionTwo: potitionTwo + 14,
      potitionThree: potitionThree,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 14,
      potitionThree: potitionThree,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: positionOne,
      potitionTwo: potitionTwo + 20,
      potitionThree: potitionThree + 20,
      increasesData: [
        "one",
      ],
    ),
  ];
}
