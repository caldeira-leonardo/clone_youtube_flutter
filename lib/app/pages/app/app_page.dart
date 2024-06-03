import 'package:flutter/material.dart';

import '../../shared/widgets/navigation_custom.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (materialContext, __) {
        return const NavigationCustom();
      },
    );
  }
}
