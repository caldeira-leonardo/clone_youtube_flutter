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
              ListTile(
                title: const Text('Home'),
                selected: widget.selectedIndex == 0,
                onTap: () {
                  widget.onItemTapped(0);
                  Scaffold.of(contextBuilder).openEndDrawer();
                },
              ),
              ListTile(
                title: const Text('Business'),
                selected: widget.selectedIndex == 1,
                onTap: () {
                  widget.onItemTapped(1);
                  Scaffold.of(contextBuilder).openEndDrawer();
                },
              ),
              ListTile(
                title: const Text('School'),
                selected: widget.selectedIndex == 2,
                onTap: () {
                  widget.onItemTapped(2);
                  Scaffold.of(contextBuilder).openEndDrawer();
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
