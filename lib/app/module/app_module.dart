import 'package:flutter_modular/flutter_modular.dart';

import '../pages/app/app_page.dart';
import 'feed_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {} // r is to injectr

  @override
  void routes(r) {
    // r is to Routemanager
    r.child(
      '/',
      child: (context) => const AppPage(),
    );
    r.module('/feed', module: FeedModule());
  }
}

// account (configuration)
// reporthistory 
// premium