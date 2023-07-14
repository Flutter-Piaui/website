import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_piaui_website/design_system/theme/theme.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 22,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //* Texto
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Sua comunidade \nde ',
                        style: ThemeApp.texts.poppins90,
                      ),
                      TextSpan(
                        text: 'Flutter',
                        style: ThemeApp.texts.poppins90blue,
                      ),
                      TextSpan(
                        text: ' no Piauí.',
                        style: ThemeApp.texts.poppins90,
                      ),
                    ],
                  ),
                ),
                //* Icones
                const Row(
                  children: [
                    Text(
                      "Aqui ficarão os icones",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //* imagem
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 550,
                width: 400,
                child: Image.asset('lib/assets/images/hand_holding_smartphone.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
