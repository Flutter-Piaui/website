import 'package:flutter/material.dart';

class ListText extends StatelessWidget {
  final String text;
  const ListText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 24),
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.done)
          ),
        ),
        SizedBox(
          width: 700,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              text, 
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            )
          ),
        ),
      ],
    );
  }
}