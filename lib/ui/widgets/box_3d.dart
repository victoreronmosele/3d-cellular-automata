import 'package:flutter/material.dart';

class Box3D extends StatelessWidget {
  final double squareSize;
  final int _numberOfSizesPerAxis = 4;

  const Box3D({Key key, @required this.squareSize});

  @override
  Widget build(BuildContext context) {
    final Widget box = Container(
        decoration: BoxDecoration(
            color: Colors.transparent, border: Border.all(color: Colors.green)),
        height: squareSize * 0.9,
        width: squareSize * 0.9);

    return OverflowBox(
      minWidth: 0.0,
      minHeight: 0.0,
      maxWidth: double.infinity,
      maxHeight: double.infinity,
      child: Column(
        children: [
          box,
          Row(
              children: List.generate(_numberOfSizesPerAxis, (index) => box)
                  .toList()),
          ...List.generate(2, (index) => box).toList()
        ],
      ),
    );
  }
}
