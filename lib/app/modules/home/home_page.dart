import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_piaui_website/design_system/theme/website_images.dart';
import '../../../design_system/components/carousel.dart';
import '../../../design_system/components/custom_card.dart';
import '../../../design_system/components/about/about.dart';
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
    return Scaffold(
       body: Center(
          child: Column(children: [
        SizedBox(
          width: 200,
          height: 200,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: WebsiteImages().imageList.length,
            itemBuilder: (ctx, index) {
              return CustomCard(
                  cardType: CardType.photo,
                  image: Image.asset(
                    WebsiteImages().imageList[index],
                  ));
            },
          ),
        ),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.navigate('/events/');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
