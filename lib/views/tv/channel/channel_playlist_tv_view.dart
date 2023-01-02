import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/extended_views/extended_watchlist_tv_view.dart';
import 'package:shoofi/views/tv/rail_navigation/home_watchlist_tv_view.dart';

class ChannelPlaylistTvView extends StatelessWidget {
  const ChannelPlaylistTvView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBottomNavigationBarController homeBottomNavigationBarController =
        Get.find(tag: "bottomNavigation");
    return Obx(() => homeBottomNavigationBarController.extendedForChannel.value
        ? homeBottomNavigationBarController.extendedWidget
        : HomeWatchlistTvView());
  }
}
