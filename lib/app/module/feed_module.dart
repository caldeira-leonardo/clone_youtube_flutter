import 'package:flutter_modular/flutter_modular.dart';

import '../pages/history/history_page.dart';
import '../pages/playlist/playlist_page.dart';
import '../pages/subscriptions/subscriptions_page.dart';
import '../pages/you/you_page.dart';

class FeedModule extends Module {
  @override
  // r is to injector
  void binds(i) {}

  @override
  // r is to Routemanager
  void routes(r) {
    r.child('/subscriptions', child: (_) => const SubscriptionsPage());
    r.child('/you', child: (_) => const YouPage());
    r.child('/history', child: (_) => const HistoryPage());
    r.child('/playlists', child: (_) => const PlaylistsPage());
  }
}
