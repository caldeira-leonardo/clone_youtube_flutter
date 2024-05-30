import 'package:flutter/material.dart';

import 'shared/widgets/navigation_custom.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, __) {
        return SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: const NavigationCustom(),
        );
      },
    );
  }
}
