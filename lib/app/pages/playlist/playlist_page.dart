import 'package:flutter/material.dart';

class PlaylistsPage extends StatefulWidget {
  const PlaylistsPage({super.key});

  @override
  State<PlaylistsPage> createState() => _PlaylistState();
}

class _PlaylistState extends State<PlaylistsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('PlaylistsPage'));
  }
}
