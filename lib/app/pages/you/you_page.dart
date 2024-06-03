import 'package:flutter/material.dart';

class YouPage extends StatefulWidget {
  const YouPage({super.key});

  @override
  State<YouPage> createState() => _YouState();
}

class _YouState extends State<YouPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('You'));
  }
}
