import '../../../Routes/routes.dart';

void watchlistBottomSheet() {
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
          ListTileForWatchListBottomSheet(
            title: "Watch later",
          ),
          ListTileForWatchListBottomSheet(
            title: "Youtube Watchlist",
          ),
          ListTileForWatchListBottomSheet(
            title: "Facebook Watchlist",
          ),
          ListTileForWatchListBottomSheet(
            title: "Instagram Watchlist",
          ),
        ],
      ))));
}
