import 'package:cellular_automata_3d/ui/widgets/box_3d.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    double getSmallerSize({@required screenWidth, @required screenHeight}) {
      return screenWidth;
    }

    final double smallerSize =
        getSmallerSize(screenWidth: screenWidth, screenHeight: screenHeight);
    final double squareSize = smallerSize * 0.9;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Box3D(squareSize: squareSize),
    );
  }
}
