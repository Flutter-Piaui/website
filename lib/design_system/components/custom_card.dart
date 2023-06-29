import 'package:flutter/material.dart';

import 'package:flutter_piaui_website/design_system/colors/custom_colors.dart';
import 'package:flutter_piaui_website/design_system/texts/texts.dart';

enum CardType { event, photo }

class CustomCard extends StatelessWidget {
  CardType cardType;
  Widget image;
  String? data;
  String? titleCard;
  void Function()? onPressed;
  CustomCard({
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
            width: 310,
            height: 316,
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Stack(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 249,
                    height: 112,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: context.color.black25),
                    child: image,
                  ),
                  const SizedBox(height: 15),
                  Text(data ?? 'Colocar a data do evento',
                      style: TextAppDefault().dataSCard),
                  const SizedBox(height: 15),
                  Text(
                    titleCard ?? 'Escrever título do evento',
                    style: TextAppDefault().textTMedium,
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
