import 'package:flutter/material.dart';
import 'package:flutter_piaui_website/design_system/texts/texts.dart';

class Menu extends StatelessWidget {
  final void Function() buttonInitial;
  final void Function() buttonAbout;
  final void Function() buttonPhotos;
  final void Function() buttonEvents;
  final void Function() buttonContacts;
  const Menu({
    Key? key,
    required this.buttonInitial,
    required this.buttonAbout,
    required this.buttonPhotos,
    required this.buttonEvents,
    required this.buttonContacts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isMobile = constraints.maxWidth < 900;

        if (isMobile) {
          return PopupMenuButton<String>(
            icon: const Icon(
              Icons.menu,
              color: Colors.blue,
            ),
            onSelected: (value) {
              // Aqui você pode adicionar a ação para cada item do menu
              print('Selecionado: $value');
            },
            itemBuilder: (BuildContext context) {
              // Defina as opções do menu
              return [
                PopupMenuItem<String>(
                  value: 'opcao1',
                  child: Text('Início'),
                ),
                PopupMenuItem<String>(
                  value: 'Sobre',
                  child: Text('Fotos'),
                ),
                PopupMenuItem<String>(
                  value: 'opcao3',
                  child: Text('Eventos'),
                ),
                PopupMenuItem<String>(
                  value: 'opcao3',
                  child: Text('Contatos'),
                ),
              ];
            },
          );
        } else {
          return menuWeb(buttonInitial, buttonAbout, buttonPhotos, buttonEvents,
              buttonContacts, isMobile);
        }
      },
    );
  }
}

Widget menuWeb(
  void Function() buttonInitial,
  void Function() buttonAbout,
  void Function() buttonPhotos,
  void Function() buttonEvents,
  void Function() buttonContacts,
  bool isMobile,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      RichText(
        text: TextSpan(
          children: [
            TextSpan(text: 'Flutter', style: TextAppDefault().menuFlutter),
            TextSpan(text: ' Piauí', style: TextAppDefault().menuPiaui)
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: buttonInitial,
            child: Text('Início', style: TextAppDefault().menuSubtitle),
          ),
          TextButton(
            onPressed: buttonAbout,
            child: Text('Sobre', style: TextAppDefault().menuSubtitle),
          ),
          TextButton(
            onPressed: buttonPhotos,
            child: Text('Fotos', style: TextAppDefault().menuSubtitle),
          ),
          TextButton(
            onPressed: buttonEvents,
            child: Text('Eventos', style: TextAppDefault().menuSubtitle),
          ),
          TextButton(
            onPressed: buttonContacts,
            child: Text('Contatos', style: TextAppDefault().menuSubtitle),
          ),
        ],
      )
    ],
  );
}

Widget menuMobile(
  void Function() buttonInitial,
  void Function() buttonAbout,
  void Function() buttonPhotos,
  void Function() buttonEvents,
  void Function() buttonContacts,
) {
  return Column(
    children: [
      RichText(
          text: TextSpan(children: [
        TextSpan(
          text: 'Flutter',
          style: TextAppDefault().menuFlutter,
        ),
        TextSpan(
          text: ' Piauí',
          style: TextAppDefault().menuPiaui,
        )
      ])),
      Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: buttonInitial,
              child: Text('Início', style: TextAppDefault().menuSubtitle),
            ),
            TextButton(
              onPressed: buttonAbout,
              child: Text('Sobre', style: TextAppDefault().menuSubtitle),
            ),
            TextButton(
              onPressed: buttonPhotos,
              child: Text('Fotos', style: TextAppDefault().menuSubtitle),
            ),
            TextButton(
              onPressed: buttonEvents,
              child: Text('Eventos', style: TextAppDefault().menuSubtitle),
            ),
            TextButton(
              onPressed: buttonContacts,
              child: Text('Contatos', style: TextAppDefault().menuSubtitle),
            ),
          ],
        ),
      )
    ],
  );
}
