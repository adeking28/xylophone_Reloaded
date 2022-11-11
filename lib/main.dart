import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playMySound(int soundNumbers){
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumbers.wav'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ElevatedButton(
                child: Text('Tap to Play'),
                onPressed: () {
                  playMySound(1);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),

                ),

              ),
            ),
            Expanded(
              child: ElevatedButton(
                child: Text('Tap to Play'),
                onPressed: () {
                  playMySound(2);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                child: Text('Tap to Play'),
                onPressed: () {
                  playMySound(3);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                child: Text('Tap to Play'),
                onPressed: () {
                  playMySound(4);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                child: Text('Tap to Play'),
                onPressed: () {
                  playMySound(5);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                child: Text('Tap to Play'),
                onPressed: () {
                  playMySound(6);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.limeAccent),
                ),
                child: Text('Tap to Play'),
                onPressed: () {
                  playMySound(7);
                },
              ),
            ),
            Expanded(
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrangeAccent),
                  ),
                  onPressed: ()async {
                    playMySound(1);
                  },
                  child: Text('Tap to play')),
            )
          ],
        )),
      ),
    );
  }
}
