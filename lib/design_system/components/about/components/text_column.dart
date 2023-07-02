import 'package:flutter/material.dart';

import 'list_text.dart';
class TextColumn extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  const TextColumn({
    super.key, 
    required this.text1, 
    required this.text2, 
    required this.text3, 
    required this.text4
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 116, left: 111),
        width: 1000,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sobre",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 75
                ),
              ),
            ),
            const SizedBox(height: 43),
            Text(
              text1,
              style: const TextStyle(
                fontSize: 22,
              ), 
            ),
            const SizedBox(height: 43),
            ListText(text: text2,),
            const SizedBox(height: 29),
            ListText(text: text3,),
            const SizedBox(height: 29),
            ListText(text: text4,),
          ],
        ),
    );
  }
}