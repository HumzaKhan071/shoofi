import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/ModalSheets/create_watch_list.dart';
import 'package:shoofi/Screens/Widgets/listTile_in_watchlist_sheet.dart';

void WatchlistsBottomModalSheet() {
  Get.bottomSheet((Container(
      height: 370,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          )),
      child: Column(
        children: [
          Center(
            child: Text(
              "Watchlists",
              style: TextStyle(
                color: black,
                fontSize: 28,
              ),
            ),
          ),
          SizedBox(height: 20),
          Divider(
            color: grey,
            thickness: 1,
          ),
          ListTile(
            onTap: () {
              createWatchListBottomSheet();
            },
            leading: Icon(
              Icons.watch_later_outlined,
              color: black,
            ),
            minLeadingWidth: 5,
            title: Text(
              "Create a Watchlist",
              style: TextStyle(
                color: black,
                fontSize: 14,
              ),
            ),
          ),
          MyWatchlistTIle(
            title: "Watch later",
          ),
          MyWatchlistTIle(
            title: "Youtube Watchlist",
          ),
          MyWatchlistTIle(
            title: "Facebook Watchlist",
          ),
          MyWatchlistTIle(
            title: "Instagram Watchlist",
          ),
        ],
      ))));
}
