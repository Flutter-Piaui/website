import 'package:flutter/material.dart';

import 'package:flutter_piaui_website/design_system/colors/custom_colors.dart';
import 'package:flutter_piaui_website/design_system/texts/texts.dart';

enum CardType { event, photo }

class CustomCard extends StatelessWidget {
  final CardType cardType;
  final Widget image;
  final String? data;
  final String? titleCard;
  final void Function()? onPressed;
  const CustomCard({
    Key? key,
    required this.cardType,
    required this.image,
    this.data,
    this.titleCard,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (cardType == CardType.event) {
        return Center(
          child: Container(
            width: 470,
            height: 536,
            padding: const EdgeInsets.fromLTRB(33, 37, 33, 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.white),
            child: Stack(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 404,
                    height: 232,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: context.color.black25),
                    child: image,
                  ),
                  const SizedBox(height: 41),
                  Text(data ?? 'Colocar a data do evento',
                      style: TextAppDefault().dataCard),
                  const SizedBox(height: 23),
                  Text(
                    titleCard ?? 'Escrever título do evento',
                    style: TextAppDefault().titleCard,
                  ),
                  const SizedBox(height: 7),
                  TextButton(
                    onPressed: onPressed,
                    child:
                        Text('Saiba Mais', style: TextAppDefault().learnMore),
                  )
                ],
              )
            ]),
          ),
        );
      } else {
        return Center(
          child: Container(
            width: 470,
            height: 536,
            padding: const EdgeInsets.fromLTRB(33, 37, 33, 52),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.white),
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34.4),
                    color: context.color.black25),
                child: image,
              )
            ]),
          ),
        );
      }
    });
  }
}
