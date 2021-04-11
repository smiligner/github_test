import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Object jet;
  //Object shark;
  @override
  void initState() {
    jet = Object(fileName: "assets/jet/Jet.obj");
    // shark = Object(fileName: "assets/shark/shark.obj");
    jet.rotation.setValues(0, 90, 0);
    jet.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Flutter 3D"),
      ),
      body: Container(
        color: Colors.pinkAccent,
        child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(jet);
            scene.camera.zoom = 10;
          },
        ),
      ),
    );
  }
}
