// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:package_info_plus/package_info_plus.dart';

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
  String version = '';

  void handleChangeRouteAndCloseModal(int routeIndex, BuildContext context) {
    widget.onItemTapped(routeIndex);
    Scaffold.of(context).openEndDrawer();
    Navigator.of(context).pushNamed('/feed/subscriptions');
  }

  Future<void> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      version = info.version;
    });
  }

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Builder(
        builder: (contextBuilder) {
          return Column(
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.home_outlined),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Início'),
                  ),
                  selected: widget.selectedIndex == 0,
                  onTap: () =>
                      handleChangeRouteAndCloseModal(0, contextBuilder),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.explore),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Shorts'),
                  ),
                  selected: widget.selectedIndex == 1,
                  onTap: () =>
                      handleChangeRouteAndCloseModal(1, contextBuilder),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.subscriptions_outlined),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('inscrições'),
                  ),
                  selected: widget.selectedIndex == 2,
                  onTap: () =>
                      handleChangeRouteAndCloseModal(2, contextBuilder),
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
                  title: const Row(
                    children: [
                      Text('Você'),
                      Icon(Icons.keyboard_arrow_right_rounded),
                    ],
                  ),
                  selected: widget.selectedIndex == 3,
                  onTap: () =>
                      handleChangeRouteAndCloseModal(3, contextBuilder),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.insert_chart_outlined_rounded),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Seu canal'),
                  ),
                  selected: widget.selectedIndex == 4,
                  onTap: () =>
                      handleChangeRouteAndCloseModal(4, contextBuilder),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.history),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Histórico'),
                  ),
                  selected: widget.selectedIndex == 5,
                  onTap: () =>
                      handleChangeRouteAndCloseModal(5, contextBuilder),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.live_tv_sharp),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Playlist'),
                  ),
                  selected: widget.selectedIndex == 6,
                  onTap: () =>
                      handleChangeRouteAndCloseModal(6, contextBuilder),
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
                  title: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Configurações'),
                  ),
                  selected: widget.selectedIndex == 7,
                  onTap: () =>
                      handleChangeRouteAndCloseModal(7, contextBuilder),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.live_tv_sharp),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Histórico de denuncias'),
                  ),
                  selected: widget.selectedIndex == 8,
                  onTap: () =>
                      handleChangeRouteAndCloseModal(8, contextBuilder),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.live_tv_sharp),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Ajuda'),
                  ),
                  selected: widget.selectedIndex == 9,
                  onTap: () =>
                      handleChangeRouteAndCloseModal(9, contextBuilder),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.live_tv_sharp),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Enviar feedback'),
                  ),
                  selected: widget.selectedIndex == 10,
                  onTap: () =>
                      handleChangeRouteAndCloseModal(10, contextBuilder),
                ),
              ),
              const Divider(
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: RichText(
                      text: TextSpan(
                        text: 'Versão  ',
                        children: [
                          TextSpan(
                            text: version,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class DrawerItem extends StatefulWidget {
  final Function onItemTapped;
  final int selectedIndex;
  final BuildContext contextBuilder;

  const DrawerItem({
    required this.selectedIndex,
    required this.onItemTapped,
    required this.contextBuilder,
    super.key,
  });

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  void handleChangeRouteAndCloseModal(int routeIndex, BuildContext context) {
    widget.onItemTapped(routeIndex);
    Scaffold.of(context).openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.settings),
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('Configurações'),
        ),
        selected: widget.selectedIndex == 7,
        onTap: () => handleChangeRouteAndCloseModal(7, widget.contextBuilder),
      ),
    );
  }
}
