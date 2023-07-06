import 'package:flutter/material.dart';
import 'package:toku_new/components/category.dart';
import 'package:toku_new/screens/colors_page.dart';
import 'package:toku_new/screens/family_members_page.dart';
import 'package:toku_new/screens/numbers_page.dart';
import 'package:toku_new/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Center(
          child: Text(
            'Toku',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      body: Column(
        children: [
          category(
            tapped: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Color(0xffF99531),
          ),
          category(
            tapped: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembers();
              }));
            },
            text: 'Family Members',
            color: Color(0xff528031),
          ),
          category(
              tapped: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorsPage();
                }));
              },
              text: 'Colors',
              color: Color(0xff7D40A2)),
          category(
            tapped: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: Color(0xff47A5CB),
          )
        ],
      ),
    );
  }
}
