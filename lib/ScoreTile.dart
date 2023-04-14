import 'package:flutter/material.dart';
import 'package:placar/ScoreTileStatate.dart';

class ScoreTile extends StatefulWidget {

  Color color;
  int counter;
  ScoreTile({
    super.key,
    required this.counter,
    required this.color
});

  @override
  State<ScoreTile> createState() {
    return ScoreTileState();
  }
}