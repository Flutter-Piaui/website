import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_piaui_website/app/modules/events/event_module.dart';
import 'package:flutter_piaui_website/app/modules/photos/photos_module.dart';
import 'package:flutter_piaui_website/design_system/components/menu/menu.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final HomeStore homeStore;
  final String title;
  const HomePage({Key? key, this.title = 'Home', required this.homeStore})
      : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeStore get homeStore => widget.homeStore;
  // late final EventStore eventStore;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Menu(
                  buttonInitial: () {},
                  buttonAbout: () {},
                  buttonPhotos: () {},
                  buttonEvents: () {},
                  buttonContacts: () {}),
              Container(
                height: 600,
                child: Column(
                  children: <WidgetModule>[
                    WidgetEventModule(),
                    WidgetPhotosModule()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
