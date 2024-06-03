import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'drawer_custom.dart';

class NavigationCustom extends StatefulWidget {
  const NavigationCustom({super.key});

  @override
  State<NavigationCustom> createState() => _NavigationCustomState();
}

class _NavigationCustomState extends State<NavigationCustom> {
  int selectedIndex = 0;
  void changeDestination(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Inicio',
      style: optionStyle,
    ),
    Text(
      'Index 1: Shorts',
      style: optionStyle,
    ),
    Text(
      'Index 2: Inscrições',
      style: optionStyle,
    ),
    Text(
      'Index 3: Você',
      style: optionStyle,
    ),
    Text(
      'Index 4: Seu Canal',
      style: optionStyle,
    ),
    Text(
      'Index 5: Histórico',
      style: optionStyle,
    ),
    Text(
      'Index 6: Playlist',
      style: optionStyle,
    ),
    Text(
      'Index 7: Configurações',
      style: optionStyle,
    ),
    Text(
      'Index 8: Histórico de denuncias',
      style: optionStyle,
    ),
    Text(
      'Index 9: Ajuda',
      style: optionStyle,
    ),
    Text(
      'Index 10: Enviar feedback',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  NavigationRailDestination customDestination({
    icon,
    color,
    selectedIcon,
    label,
  }) {
    return NavigationRailDestination(
      icon: icon,
      indicatorColor: color,
      selectedIcon: selectedIcon,
      label: Text(label),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
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
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Builder(
            builder: (context) {
              return Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: DrawerCustom(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
