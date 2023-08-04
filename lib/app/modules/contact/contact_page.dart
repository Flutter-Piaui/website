import 'package:flutter/material.dart';
import 'package:flutter_piaui_website/design_system/theme/theme.dart';
import 'package:url_launcher/link.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.75,
                width: size.width * 0.2,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Menu",
                      style: ThemeApp.texts.menuContact,
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      height: 50,
                      child: GestureDetector(
                        child: Text(
                          "Início",
                          style: ThemeApp.texts.subMenuContact,
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: GestureDetector(
                        child: Text(
                          "Sobre",
                          style: ThemeApp.texts.subMenuContact,
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: GestureDetector(
                        child: Text(
                          "Eventos",
                          style: ThemeApp.texts.subMenuContact,
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: GestureDetector(
                        child: Text(
                          "Contato",
                          style: ThemeApp.texts.subMenuContact,
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.75,
                width: size.width * 0.25,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Utilidades",
                      style: ThemeApp.texts.menuContact,
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      height: 50,
                      child: GestureDetector(
                        child: Text(
                          "Start Here",
                          style: ThemeApp.texts.subMenuContact,
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: GestureDetector(
                        child: Text(
                          "Style Guide",
                          style: ThemeApp.texts.subMenuContact,
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: GestureDetector(
                        child: Text(
                          "Password Protected",
                          style: ThemeApp.texts.subMenuContact,
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: GestureDetector(
                        child: Text(
                          "404 Not Found",
                          style: ThemeApp.texts.subMenuContact,
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: GestureDetector(
                        child: Text(
                          "Licenses",
                          style: ThemeApp.texts.subMenuContact,
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: GestureDetector(
                        child: Text(
                          "Changelog",
                          style: ThemeApp.texts.subMenuContact,
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.75,
                width: size.width * 0.2,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Siga-nos",
                      style: ThemeApp.texts.menuContact,
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      height: 50,
                      child: Link(
                          uri: Uri.parse(
                              "https://chat.whatsapp.com/DuqIGiftjhC4bKZUl9OTJE"),
                          target: LinkTarget.blank,
                          builder: (BuildContext buildContext,
                              FollowLink? openLink) {
                            return TextButton(
                              onPressed: openLink,
                              child: Text(
                                "WhatsApp",
                                style: ThemeApp.texts.subMenuContact,
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 50,
                      child: Link(
                          uri: Uri.parse(
                              "https://www.instagram.com/flutter_piaui/"),
                          target: LinkTarget.blank,
                          builder: (BuildContext buildContext,
                              FollowLink? openLink) {
                            return TextButton(
                              onPressed: openLink,
                              child: Text(
                                "Instagram",
                                style: ThemeApp.texts.subMenuContact,
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 50,
                      child: Link(
                          uri: Uri.parse("https://twitter.com/FlutterPiaui"),
                          target: LinkTarget.blank,
                          builder: (BuildContext buildContext,
                              FollowLink? openLink) {
                            return TextButton(
                              onPressed: openLink,
                              child: Text(
                                "Twitter",
                                style: ThemeApp.texts.subMenuContact,
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 50,
                      child: Link(
                          uri: Uri.parse(
                              "https://www.youtube.com/@flutterpiaui5662"),
                          target: LinkTarget.blank,
                          builder: (BuildContext buildContext,
                              FollowLink? openLink) {
                            return TextButton(
                              onPressed: openLink,
                              child: Text(
                                "Youtube",
                                style: ThemeApp.texts.subMenuContact,
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 50,
                      child: Link(
                          uri: Uri.parse("https://discord.gg/9WBcqzrn"),
                          target: LinkTarget.blank,
                          builder: (BuildContext buildContext,
                              FollowLink? openLink) {
                            return TextButton(
                              onPressed: openLink,
                              child: Text(
                                "Discord",
                                style: ThemeApp.texts.subMenuContact,
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: size.height * 0.3,
                  width: size.width * 0.3,
                  padding: const EdgeInsets.all(32.0),
                  decoration: BoxDecoration(
                    color: ThemeApp.colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contate-nos",
                        style: ThemeApp.texts.titleCardContact,
                      ),
                      Text(
                        "contato@flutterpiaui.com.br",
                        style: ThemeApp.texts.subtitleCardContact,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Text(
            "Copyright \u00a9 Flutter Piauí 2023 - Todos os direitos reservados",
            style: ThemeApp.texts.subMenuContact,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Desenvolvido por Flutter Piauí (",
                style: ThemeApp.texts.subMenuContact,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "ver integrantes",
                  style: ThemeApp.texts.subMenuContactLink,
                ),
              ),
              Text(
                ").",
                style: ThemeApp.texts.subMenuContact,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
