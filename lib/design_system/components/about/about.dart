import 'package:flutter/material.dart';

import 'components/text_column.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {

    const String text1 = 'A comunidade Flutter Piauí é um grupo de desenvolvedores, entusiastas e estudantes de tecnologia que compartilham um interesse comum na plataforma de desenvolvimento de aplicativos Flutter. A comunidade tem como objetivo fornecer suporte, compartilhar conhecimento e promover a adoção do Flutter no estado do Piauí, no Brasil. Através de reuniões regulares, eventos, palestras, workshops e atividades de desenvolvimento em grupo, a comunidade busca criar um ambiente colaborativo onde os membros possam aprender e crescer juntos. A comunidade Flutter Piauí é aberta a todos que desejam se envolver com o Flutter, independentemente do nível de experiência ou habilidade.';

    const String text2 = 'Colaboração: A comunidade é um ambiente colaborativo onde os membros são incentivados a compartilhar conhecimentos e experiências, ajudando uns aos outros a aprender e crescer juntos.';
    const String text3 = 'Inclusão: A comunidade é aberta a todos que desejam aprender e se envolver com o Flutter, independentemente do nível de experiência ou habilidade, e busca criar um ambiente acolhedor e inclusivo para todos.';
    const String text4 = 'Engajamento: A comunidade é ativa e engajada, organizando eventos, reuniões regulares e atividades de desenvolvimento em grupo para ajudar os membros a se manterem atualizados sobre as novidades do Flutter e a praticarem suas habilidades de desenvolvimento.';
    return Row(
      children: [
        const TextColumn(
          text1: text1, 
          text2: text2, 
          text3: text3, 
          text4: text4,
        ),
        const SizedBox(
          width: 100,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Image.asset(
            'images/zyro-image_1.png',
          ),
        ),
      ],
    );
  }
}