import 'package:flutter/material.dart';
import 'package:placar/ScoreTile.dart';

class ScoreTileState extends State<ScoreTile> {



  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
            child: Ink(
              color: widget.color,
                child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onLongPress: () => setState(() {
                      if (widget.counter > 0) {
                        widget.counter--;
                      }
                    }),
                    onTap: () => setState(() {
                      widget.counter++;
                    }),
                    child: Center(child: Container(width: MediaQuery.of(context).size.width / 2, child: Text("${widget.counter}", textAlign: TextAlign.center, style: const TextStyle(fontSize: 200, color: Colors.white))))))));
  }

}