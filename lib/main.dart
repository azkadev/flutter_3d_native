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
  var _displayMode = DisplayMode.cubes;
  final _cubes = _generateCubes();
  final _points = _generatePoints().toList();

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
                      /// kursi
                      ...makeObject(
                        length: 25,
                        potitionOne: 20,
                        potitionTwo: 0,
                        potitionThree: 20,
                        increasesData: ["two"],
                      ),
                      ...makeObject(
                        length: 25,
                        potitionOne: 20,
                        potitionTwo: 0,
                        potitionThree: 0,
                        increasesData: ["two"],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 0,
                        potitionTwo: 0,
                        potitionThree: 20,
                        increasesData: ["two"],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 0,
                        potitionTwo: 0,
                        potitionThree: 0,
                        increasesData: ["two"],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 0,
                        potitionTwo: 12,
                        potitionThree: 0,
                        increasesData: ["one"],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 0,
                        potitionTwo: 12,
                        potitionThree: 20,
                        increasesData: ["one"],
                      ),
                      ...makeObject(
                        length: 11,
                        potitionOne: 0,
                        potitionTwo: 20,
                        potitionThree: 0,
                        increasesData: [
                          "one",
                        ],
                      ),
                      ...makeObject(
                        length: 11,
                        potitionOne: 0,
                        potitionTwo: 20,
                        potitionThree: 2,
                        increasesData: [
                          "one",
                        ],
                      ),
                      ...makeObject(
                        length: 11,
                        potitionOne: 0,
                        potitionTwo: 20,
                        potitionThree: 4,
                        increasesData: [
                          "one",
                        ],
                      ),
                      ...makeObject(
                        length: 11,
                        potitionOne: 0,
                        potitionTwo: 20,
                        potitionThree: 6,
                        increasesData: [
                          "one",
                        ],
                      ),
                      ...makeObject(
                        length: 11,
                        potitionOne: 0,
                        potitionTwo: 20,
                        potitionThree: 8,
                        increasesData: [
                          "one",
                        ],
                      ),
                      ...makeObject(
                        length: 11,
                        potitionOne: 0,
                        potitionTwo: 20,
                        potitionThree: 10,
                        increasesData: [
                          "one",
                        ],
                      ),
                      ...makeObject(
                        length: 11,
                        potitionOne: 0,
                        potitionTwo: 20,
                        potitionThree: 12,
                        increasesData: [
                          "one",
                        ],
                      ),
                      ...makeObject(
                        length: 11,
                        potitionOne: 0,
                        potitionTwo: 20,
                        potitionThree: 14,
                        increasesData: [
                          "one",
                        ],
                      ),
                      ...makeObject(
                        length: 11,
                        potitionOne: 0,
                        potitionTwo: 20,
                        potitionThree: 16,
                        increasesData: [
                          "one",
                        ],
                      ),
                      ...makeObject(
                        length: 11,
                        potitionOne: 0,
                        potitionTwo: 20,
                        potitionThree: 18,
                        increasesData: [
                          "one",
                        ],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 20,
                        potitionTwo: 25,
                        potitionThree: 0,
                        increasesData: [
                          "three",
                        ],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 20,
                        potitionTwo: 38,
                        potitionThree: 00,
                        increasesData: [
                          "three",
                        ],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 20,
                        potitionTwo: 40,
                        potitionThree: 00,
                        increasesData: [
                          "three",
                        ],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 20,
                        potitionTwo: 42,
                        potitionThree: 00,
                        increasesData: [
                          "three",
                        ],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 20,
                        potitionTwo: 44,
                        potitionThree: 00,
                        increasesData: [
                          "three",
                        ],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 20,
                        potitionTwo: 46,
                        potitionThree: 00,
                        increasesData: [
                          "three",
                        ],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 20,
                        potitionTwo: 48,
                        potitionThree: 00,
                        increasesData: [
                          "three",
                        ],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 20,
                        potitionTwo: 14,
                        potitionThree: 00,
                        increasesData: [
                          "three",
                        ],
                      ),
                      ...makeObject(
                        length: 10,
                        potitionOne: 0,
                        potitionTwo: 14,
                        potitionThree: 0,
                        increasesData: [
                          "three",
                        ],
                      ),
                      ...makeObject(
                        length: 11,
                        potitionOne: 0,
                        potitionTwo: 20,
                        potitionThree: 20,
                        increasesData: [
                          "one",
                        ],
                      ),

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

Iterable<Cube3D> _generateCubes() sync* {
  final colors = [
    Colors.grey.shade200,
    Colors.grey.shade300,
    Colors.grey.shade400,
    Colors.grey.shade500,
    Colors.grey.shade600,
    Colors.grey.shade700,
    Colors.grey.shade800,
    Colors.grey.shade900,
  ];

  const count = 8;
  for (var x = count; x > 0; x--) {
    for (var y = count; y > 0; y--) {
      for (var z = count; z > 0; z--) {
        yield Cube3D(
          0.9,
          vector.Vector3(
            x.toDouble() * 2,
            y.toDouble() * 2,
            z.toDouble() * 2,
          ),
          color: colors[(colors.length - y) % colors.length],
        );
      }
    }
  }
}

Iterable<Point3D> _generatePoints() sync* {
  for (var x = 0; x < 10; x++) {
    for (var y = 0; y < 10; y++) {
      for (var z = 0; z < 10; z++) {
        yield Point3D(
          vector.Vector3(
            x.toDouble() * 2,
            y.toDouble() * 2,
            z.toDouble() * 2,
          ),
        );
      }
    }
  }
}

enum DisplayMode {
  cubes,
  wireframe,
  points,
}

extension DisplayModeTitle on DisplayMode {
  String get title {
    switch (this) {
      case DisplayMode.cubes:
        return "Cubes";
      case DisplayMode.wireframe:
        return "Wireframe";
      case DisplayMode.points:
        return "Points";
    }
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

//

// [
//                       Cube3D(2, vector.Vector3(0, 0, 0)),
//                       Cube3D(2, vector.Vector3(0, 2, 0)),
//                       Cube3D(2, vector.Vector3(0, 4, 0)),
//                       Cube3D(2, vector.Vector3(0, 6, 0)),
//                       Cube3D(2, vector.Vector3(0, 8, 0)),
//                       Cube3D(2, vector.Vector3(2, 8, 0)),
//                       Cube3D(2, vector.Vector3(4, 8, 0)),
//                       Cube3D(2, vector.Vector3(6, 8, 0)),
//                       Cube3D(2, vector.Vector3(8, 8, 0)),
//                       Cube3D(2, vector.Vector3(10, 8, 0)),
//                       Cube3D(2, vector.Vector3(12, 8, 0)),
//                       Cube3D(2, vector.Vector3(14, 8, 0)),
//                       Cube3D(2, vector.Vector3(16, 8, 0)),
//                       Cube3D(2, vector.Vector3(18, 8, 0)),
//                       Cube3D(2, vector.Vector3(0, 10, 0)),
//                       Cube3D(2, vector.Vector3(0, 12, 0)),
//                       Cube3D(2, vector.Vector3(0, 14, 0)),
//                       Cube3D(2, vector.Vector3(0, 14, 2)),
//                       Cube3D(2, vector.Vector3(0, 14, 4)),
//                       Cube3D(2, vector.Vector3(0, 14, 6)),
//                       Cube3D(2, vector.Vector3(0, 14, 8)),
//                       Cube3D(2, vector.Vector3(0, 14, 10)),
//                       Cube3D(2, vector.Vector3(0, 14, 12)),
//                       Cube3D(2, vector.Vector3(0, 14, 14)),
//                       Cube3D(2, vector.Vector3(0, 14, 16)),
//                       Cube3D(2, vector.Vector3(0, 14, 18)),
//                       Cube3D(2, vector.Vector3(2, 14, 0)),
//                       Cube3D(2, vector.Vector3(2, 14, 2)),
//                       Cube3D(2, vector.Vector3(2, 14, 4)),
//                       Cube3D(2, vector.Vector3(2, 14, 6)),
//                       Cube3D(2, vector.Vector3(2, 14, 8)),
//                       Cube3D(2, vector.Vector3(2, 14, 10)),
//                       Cube3D(2, vector.Vector3(2, 14, 12)),
//                       Cube3D(2, vector.Vector3(2, 14, 14)),
//                       Cube3D(2, vector.Vector3(2, 14, 16)),
//                       Cube3D(2, vector.Vector3(2, 14, 18)),
//                       Cube3D(2, vector.Vector3(2, 14, 20)),
//                       Cube3D(2, vector.Vector3(4, 14, 0)),
//                       Cube3D(2, vector.Vector3(4, 14, 2)),
//                       Cube3D(2, vector.Vector3(4, 14, 4)),
//                       Cube3D(2, vector.Vector3(4, 14, 6)),
//                       Cube3D(2, vector.Vector3(4, 14, 8)),
//                       Cube3D(2, vector.Vector3(4, 14, 10)),
//                       Cube3D(2, vector.Vector3(4, 14, 12)),
//                       Cube3D(2, vector.Vector3(4, 14, 14)),
//                       Cube3D(2, vector.Vector3(4, 14, 16)),
//                       Cube3D(2, vector.Vector3(4, 14, 18)),
//                       Cube3D(2, vector.Vector3(4, 14, 20)),
//                       Cube3D(2, vector.Vector3(6, 14, 0)),
//                       Cube3D(2, vector.Vector3(6, 14, 2)),
//                       Cube3D(2, vector.Vector3(6, 14, 4)),
//                       Cube3D(2, vector.Vector3(6, 14, 6)),
//                       Cube3D(2, vector.Vector3(6, 14, 8)),
//                       Cube3D(2, vector.Vector3(6, 14, 10)),
//                       Cube3D(2, vector.Vector3(6, 14, 12)),
//                       Cube3D(2, vector.Vector3(6, 14, 14)),
//                       Cube3D(2, vector.Vector3(6, 14, 16)),
//                       Cube3D(2, vector.Vector3(6, 14, 18)),
//                       Cube3D(2, vector.Vector3(6, 14, 20)),
//                       Cube3D(2, vector.Vector3(8, 14, 0)),
//                       Cube3D(2, vector.Vector3(8, 14, 2)),
//                       Cube3D(2, vector.Vector3(8, 14, 4)),
//                       Cube3D(2, vector.Vector3(8, 14, 6)),
//                       Cube3D(2, vector.Vector3(8, 14, 8)),
//                       Cube3D(2, vector.Vector3(8, 14, 10)),
//                       Cube3D(2, vector.Vector3(8, 14, 12)),
//                       Cube3D(2, vector.Vector3(8, 14, 14)),
//                       Cube3D(2, vector.Vector3(8, 14, 16)),
//                       Cube3D(2, vector.Vector3(8, 14, 18)),
//                       Cube3D(2, vector.Vector3(8, 14, 20)),
//                       Cube3D(2, vector.Vector3(10, 14, 0)),
//                       Cube3D(2, vector.Vector3(10, 14, 2)),
//                       Cube3D(2, vector.Vector3(10, 14, 4)),
//                       Cube3D(2, vector.Vector3(10, 14, 6)),
//                       Cube3D(2, vector.Vector3(10, 14, 8)),
//                       Cube3D(2, vector.Vector3(10, 14, 10)),
//                       Cube3D(2, vector.Vector3(10, 14, 12)),
//                       Cube3D(2, vector.Vector3(10, 14, 14)),
//                       Cube3D(2, vector.Vector3(10, 14, 16)),
//                       Cube3D(2, vector.Vector3(10, 14, 18)),
//                       Cube3D(2, vector.Vector3(10, 14, 20)),
//                       Cube3D(2, vector.Vector3(12, 14, 0)),
//                       Cube3D(2, vector.Vector3(12, 14, 2)),
//                       Cube3D(2, vector.Vector3(12, 14, 4)),
//                       Cube3D(2, vector.Vector3(12, 14, 6)),
//                       Cube3D(2, vector.Vector3(12, 14, 8)),
//                       Cube3D(2, vector.Vector3(12, 14, 10)),
//                       Cube3D(2, vector.Vector3(12, 14, 12)),
//                       Cube3D(2, vector.Vector3(12, 14, 14)),
//                       Cube3D(2, vector.Vector3(12, 14, 16)),
//                       Cube3D(2, vector.Vector3(12, 14, 18)),
//                       Cube3D(2, vector.Vector3(12, 14, 20)),
//                       Cube3D(2, vector.Vector3(14, 14, 0)),
//                       Cube3D(2, vector.Vector3(14, 14, 2)),
//                       Cube3D(2, vector.Vector3(14, 14, 4)),
//                       Cube3D(2, vector.Vector3(14, 14, 6)),
//                       Cube3D(2, vector.Vector3(14, 14, 8)),
//                       Cube3D(2, vector.Vector3(14, 14, 10)),
//                       Cube3D(2, vector.Vector3(14, 14, 12)),
//                       Cube3D(2, vector.Vector3(14, 14, 14)),
//                       Cube3D(2, vector.Vector3(14, 14, 16)),
//                       Cube3D(2, vector.Vector3(14, 14, 18)),
//                       Cube3D(2, vector.Vector3(14, 14, 20)),
//                       Cube3D(2, vector.Vector3(16, 14, 0)),
//                       Cube3D(2, vector.Vector3(16, 14, 2)),
//                       Cube3D(2, vector.Vector3(16, 14, 4)),
//                       Cube3D(2, vector.Vector3(16, 14, 6)),
//                       Cube3D(2, vector.Vector3(16, 14, 8)),
//                       Cube3D(2, vector.Vector3(16, 14, 10)),
//                       Cube3D(2, vector.Vector3(16, 14, 12)),
//                       Cube3D(2, vector.Vector3(16, 14, 14)),
//                       Cube3D(2, vector.Vector3(16, 14, 16)),
//                       Cube3D(2, vector.Vector3(16, 14, 18)),
//                       Cube3D(2, vector.Vector3(16, 14, 20)),
//                       Cube3D(2, vector.Vector3(18, 14, 0)),
//                       Cube3D(2, vector.Vector3(18, 14, 2)),
//                       Cube3D(2, vector.Vector3(18, 14, 4)),
//                       Cube3D(2, vector.Vector3(18, 14, 6)),
//                       Cube3D(2, vector.Vector3(18, 14, 8)),
//                       Cube3D(2, vector.Vector3(18, 14, 10)),
//                       Cube3D(2, vector.Vector3(18, 14, 12)),
//                       Cube3D(2, vector.Vector3(18, 14, 14)),
//                       Cube3D(2, vector.Vector3(18, 14, 16)),
//                       Cube3D(2, vector.Vector3(18, 14, 18)),
//                       Cube3D(2, vector.Vector3(18, 14, 20)),
//                       Cube3D(2, vector.Vector3(10, 14, 0)),
//                       Cube3D(2, vector.Vector3(10, 14, 2)),
//                       Cube3D(2, vector.Vector3(10, 14, 4)),
//                       Cube3D(2, vector.Vector3(10, 14, 6)),
//                       Cube3D(2, vector.Vector3(10, 14, 8)),
//                       Cube3D(2, vector.Vector3(10, 14, 10)),
//                       Cube3D(2, vector.Vector3(10, 14, 12)),
//                       Cube3D(2, vector.Vector3(10, 14, 14)),
//                       Cube3D(2, vector.Vector3(10, 14, 16)),
//                       Cube3D(2, vector.Vector3(10, 14, 18)),
//                       Cube3D(2, vector.Vector3(10, 14, 20)),
//                       Cube3D(2, vector.Vector3(0, 0, 20)),
//                       Cube3D(2, vector.Vector3(0, 2, 20)),
//                       Cube3D(2, vector.Vector3(0, 4, 20)),
//                       Cube3D(2, vector.Vector3(0, 6, 20)),
//                       Cube3D(2, vector.Vector3(0, 8, 20)),
//                       Cube3D(2, vector.Vector3(0, 10, 20)),
//                       Cube3D(2, vector.Vector3(0, 12, 20)),
//                       Cube3D(2, vector.Vector3(0, 14, 20)),
//                       Cube3D(2, vector.Vector3(20, 0, 0)),
//                       Cube3D(2, vector.Vector3(20, 2, 0)),
//                       Cube3D(2, vector.Vector3(20, 4, 0)),
//                       Cube3D(2, vector.Vector3(20, 6, 0)),
//                       Cube3D(2, vector.Vector3(20, 8, 0)),
//                       Cube3D(2, vector.Vector3(20, 10, 0)),
//                       Cube3D(2, vector.Vector3(20, 12, 0)),
//                       Cube3D(2, vector.Vector3(20, 14, 0)),
//                       Cube3D(2, vector.Vector3(20, 14, 2)),
//                       Cube3D(2, vector.Vector3(20, 14, 4)),
//                       Cube3D(2, vector.Vector3(20, 14, 6)),
//                       Cube3D(2, vector.Vector3(20, 14, 8)),
//                       Cube3D(2, vector.Vector3(20, 14, 10)),
//                       Cube3D(2, vector.Vector3(20, 14, 12)),
//                       Cube3D(2, vector.Vector3(20, 14, 14)),
//                       Cube3D(2, vector.Vector3(20, 14, 16)),
//                       Cube3D(2, vector.Vector3(20, 14, 18)),
//                       Cube3D(2, vector.Vector3(20, 0, 20)),
//                       Cube3D(2, vector.Vector3(20, 2, 20)),
//                       Cube3D(2, vector.Vector3(20, 4, 20)),
//                       Cube3D(2, vector.Vector3(20, 6, 20)),
//                       Cube3D(2, vector.Vector3(20, 8, 20)),
//                       Cube3D(2, vector.Vector3(20, 10, 20)),
//                       Cube3D(2, vector.Vector3(20, 12, 20)),
//                       Cube3D(2, vector.Vector3(20, 14, 20)),
//                     ],

kursi() {
  return [
    ...makeObject(
      length: 25,
      potitionOne: 20,
      potitionTwo: 0,
      potitionThree: 20,
      increasesData: ["two"],
    ),
    ...makeObject(
      length: 25,
      potitionOne: 20,
      potitionTwo: 0,
      potitionThree: 0,
      increasesData: ["two"],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 0,
      potitionTwo: 0,
      potitionThree: 20,
      increasesData: ["two"],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 0,
      potitionTwo: 0,
      potitionThree: 0,
      increasesData: ["two"],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 0,
      potitionTwo: 12,
      potitionThree: 0,
      increasesData: ["one"],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 0,
      potitionTwo: 12,
      potitionThree: 20,
      increasesData: ["one"],
    ),
    ...makeObject(
      length: 11,
      potitionOne: 0,
      potitionTwo: 20,
      potitionThree: 0,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: 0,
      potitionTwo: 20,
      potitionThree: 2,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: 0,
      potitionTwo: 20,
      potitionThree: 4,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: 0,
      potitionTwo: 20,
      potitionThree: 6,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: 0,
      potitionTwo: 20,
      potitionThree: 8,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: 0,
      potitionTwo: 20,
      potitionThree: 10,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: 0,
      potitionTwo: 20,
      potitionThree: 12,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: 0,
      potitionTwo: 20,
      potitionThree: 14,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: 0,
      potitionTwo: 20,
      potitionThree: 16,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: 0,
      potitionTwo: 20,
      potitionThree: 18,
      increasesData: [
        "one",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 20,
      potitionTwo: 25,
      potitionThree: 0,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 20,
      potitionTwo: 38,
      potitionThree: 00,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 20,
      potitionTwo: 40,
      potitionThree: 00,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 20,
      potitionTwo: 42,
      potitionThree: 00,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 20,
      potitionTwo: 44,
      potitionThree: 00,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 20,
      potitionTwo: 46,
      potitionThree: 00,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 20,
      potitionTwo: 48,
      potitionThree: 00,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 20,
      potitionTwo: 14,
      potitionThree: 00,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 10,
      potitionOne: 0,
      potitionTwo: 14,
      potitionThree: 0,
      increasesData: [
        "three",
      ],
    ),
    ...makeObject(
      length: 11,
      potitionOne: 0,
      potitionTwo: 20,
      potitionThree: 20,
      increasesData: [
        "one",
      ],
    ),
  ];
}
