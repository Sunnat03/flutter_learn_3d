import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Object jet;
  late Object shark;
  @override
  void initState() {
    jet = Object(fileName: "assets/jet/Jet.obj");
    shark = Object(fileName: "assets/shark/shark.obj");
    shark.rotation.setValues(0, 90, 0);
    shark.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Flutter 3D"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Cube(
              onSceneCreated: (Scene scene) {
                scene.world.add(shark);
                scene.camera.zoom = 10;
              },
            ),
          ),
          Expanded(
            child: Cube(
              onSceneCreated: (Scene scene) {
                scene.world.add(jet);
                scene.camera.zoom = 10;
              },
            ),
          ),
        ],
      ),
    );
  }
}
