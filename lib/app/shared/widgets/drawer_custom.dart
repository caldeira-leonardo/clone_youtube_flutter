// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerCustom extends StatefulWidget {
  final int selectedIndex;
  final Function onItemTapped;

  const DrawerCustom({
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  @override
  State<DrawerCustom> createState() => _DrawerCustomState();
}

class _DrawerCustomState extends State<DrawerCustom> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Builder(
        builder: (contextBuilder) {
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.menu),
                      onPressed: () => {
                        Scaffold.of(contextBuilder).openEndDrawer(),
                      },
                    ),
                    const SizedBox(width: 20),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          log('//TODO: Voltar ao começo');
                        },
                        child: SvgPicture.asset(
                          'images/teste.svg', //TODO: como fazer isso ser mostrado ? (images/logo_full_black.svg)
                          height: 30,
                          width: 90,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // NavigationRail(
              //   destinations: const <NavigationRailDestination>[
              //     NavigationRailDestination(
              //       icon: Icon(Icons.favorite_border),
              //       selectedIcon: Icon(Icons.favorite),
              //       label: Text('First'),
              //     )
              //   ],
              //   selectedIndex: widget.selectedIndex,
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  title: const Text('Início'),
                  leading: const Icon(Icons.home_outlined),
                  selected: widget.selectedIndex == 0,
                  onTap: () {
                    widget.onItemTapped(0);
                    Scaffold.of(contextBuilder).openEndDrawer();
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.explore),
                  title: const Text('Shorts'),
                  selected: widget.selectedIndex == 1,
                  onTap: () {
                    widget.onItemTapped(1);
                    Scaffold.of(contextBuilder).openEndDrawer();
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.subscriptions_outlined),
                  title: const Text('inscrições'),
                  selected: widget.selectedIndex == 2,
                  onTap: () {
                    widget.onItemTapped(2);
                    Scaffold.of(contextBuilder).openEndDrawer();
                  },
                ),
              ),
              const Divider(
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  title: const Text('Você'),
                  selected: widget.selectedIndex == 2,
                  onTap: () {
                    widget.onItemTapped(2);
                    Scaffold.of(contextBuilder).openEndDrawer();
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.insert_chart_outlined_rounded),
                  title: const Text('Seu canal'),
                  selected: widget.selectedIndex == 2,
                  onTap: () {
                    widget.onItemTapped(2);
                    Scaffold.of(contextBuilder).openEndDrawer();
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.history),
                  title: const Text('Histórico'),
                  selected: widget.selectedIndex == 2,
                  onTap: () {
                    widget.onItemTapped(2);
                    Scaffold.of(contextBuilder).openEndDrawer();
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.live_tv_sharp),
                  title: const Text('Playlist'),
                  selected: widget.selectedIndex == 2,
                  onTap: () {
                    widget.onItemTapped(2);
                    Scaffold.of(contextBuilder).openEndDrawer();
                  },
                ),
              ),
              const Divider(
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Configurações'),
                  selected: widget.selectedIndex == 2,
                  onTap: () {
                    widget.onItemTapped(2);
                    Scaffold.of(contextBuilder).openEndDrawer();
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.live_tv_sharp),
                  title: const Text('Histórico de denuncias'),
                  selected: widget.selectedIndex == 2,
                  onTap: () {
                    widget.onItemTapped(2);
                    Scaffold.of(contextBuilder).openEndDrawer();
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.live_tv_sharp),
                  title: const Text('Ajuda'),
                  selected: widget.selectedIndex == 2,
                  onTap: () {
                    widget.onItemTapped(2);
                    Scaffold.of(contextBuilder).openEndDrawer();
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.live_tv_sharp),
                  title: const Text('Enviar feedback'),
                  selected: widget.selectedIndex == 2,
                  onTap: () {
                    widget.onItemTapped(2);
                    Scaffold.of(contextBuilder).openEndDrawer();
                  },
                ),
              ),
              const Divider(
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
              ),
            ],
          );
        },
      ),
    );
  }
}
