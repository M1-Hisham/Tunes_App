import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Expanded bp(int n, String s, Color c) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 3.0),
        child: ElevatedButton(
          onPressed: () {
            final player = AudioCache();
            player.play('music-$n.mp3');
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 3.0,
              ),
              Icon(
                Icons.music_note_outlined,
                color: c,
                size: 26,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                s,
                style: TextStyle(
                    color: c, fontSize: 20.0, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('tones',
              style: TextStyle(
                fontSize: 23,
              )),
          leading: const Icon(
            Icons.generating_tokens,
            color: Colors.white,
            size: 35,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bp(1, 'Samsung Galaxy', Colors.red),
            bp(2, 'Samsung Note', const Color.fromARGB(255, 224, 202, 0)),
            bp(3, 'Nokia', Colors.green),
            bp(4, 'Iphone', Colors.black),
            bp(5, 'WhatsApp', Colors.deepPurpleAccent),
            bp(6, 'Samsung S7', Colors.blue),
            bp(7, 'iphone 6', Colors.orange),
          ],
        ),
      ),
    );
  }
}
