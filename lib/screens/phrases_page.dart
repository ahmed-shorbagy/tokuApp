import 'package:flutter/material.dart';
import 'package:toku_new/components/phrases_section.dart';

import '../components/section.dart';
import '../models/Item.dart';

class PhrasesPage extends StatelessWidget {
  @override
  final List<Item> numbers = const [
    Item(
        sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/colors/color_black.png',
        jpnum: 'ichi',
        enNum: 'one'),
    Item(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/colors/color_gray.png',
        jpnum: 'Ni',
        enNum: 'Two'),
    Item(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpnum: 'san',
        enNum: 'three'),
    Item(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpnum: 'Shi',
        enNum: 'four'),
    Item(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpnum: 'Go',
        enNum: 'five'),
    Item(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpnum: 'Roku',
        enNum: 'six'),
    Item(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpnum: 'Setun',
        enNum: 'seven'),
    Item(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpnum: 'Hachi',
        enNum: 'eight'),
    Item(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpnum: 'Kyū',
        enNum: 'Nine'),
    Item(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpnum: 'Jū',
        enNum: 'Ten'),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff49332A),
          title: Text('Phrases'),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return phrasesSection(
              number: numbers[index],
              color: Color(0xff47A5CB),
            );
          },
        ));
  }
}
