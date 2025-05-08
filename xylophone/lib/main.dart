import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  playSound(1);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ),
                child: Text('Play'),
              ),
              TextButton(
                onPressed: () {
                  playSound(2);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ),
                child: Text('Play'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
