import 'package:flutter/material.dart';
import '../models/Item.dart';
import 'package:audioplayers/audioplayers.dart';

class phrasesSection extends StatelessWidget {
  const phrasesSection({required this.number, required this.color});

  final Item number;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: color,
      child: Row(
        children: [
          Container(
            color: color,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.enNum,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(number.jpnum,
                    style: TextStyle(fontSize: 18, color: Colors.white))
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () {
              try {
                final player = AudioPlayer();
// If file located in assets folder like assets/sounds/note01.wave"
                player.play(AssetSource(number.sound));
              } catch (ex) {
                print(ex);
              }
            },
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
