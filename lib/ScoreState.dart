import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:placar/Score.dart';
import 'package:placar/ScoreTile.dart';
import 'package:wakelock/wakelock.dart';

class ScoreState extends State<Score> {

  int _counterLeft = 0;
  int _counterRigth = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
    ]);
    Wakelock.enable();
    return Scaffold(
      body: Stack(children: [
        Positioned(child: Center(child: Row(children: [
          ScoreTile(counter: _counterLeft, color:  Colors.red),
          ScoreTile(counter: _counterRigth, color: Colors.blue,)]))),
        Positioned(left: (MediaQuery.of(context).size.width / 2) - 75,
            bottom: 24.0,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 150,
                      child:ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                          onPressed: () => _clearScore(),
                          child: const Text( 'Zerar Placar', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black))))]))
      ]),
    );
  }
  void _clearScore() {
    setState(() {
      _counterRigth = 0;
      _counterLeft = 0;
    });
  }

}
