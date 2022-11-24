import 'package:shoofi/Routes/routes.dart';


class HomeWatchlistScreen extends StatelessWidget {
  const HomeWatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeWatchListControler controler = Get.find(tag: "watchlist");
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios,
          color: black,
        ),
        title: Image.asset(
          "assets/Images/logo5.png",
        ),
        actions: [
          Icon(
            Icons.add_location_outlined,
            color: black,
          ),
          SizedBox(width: 10),
          Row(
            children: [
              Text(
                "En",
                style: GoogleFonts.archivo(
                    color: black, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: black,
              )
            ],
          )
        ],
      ),
      body: Obx(() {
        return !(controler.extended.value)
            ? ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, right: 18, bottom: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  controler.watchListTiles[index],
                                  style: GoogleFonts.archivo(
                                      color: black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    controler.selectedTile =
                                        controler.watchListTiles[index];
                                    controler.extended.value = true;
                                  },
                                  child: Text(
                                    "view all",
                                    style: GoogleFonts.archivo(
                                        color: yellow,
                                        fontSize: 13,
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Wrap(
                        spacing: 10,
                        alignment: WrapAlignment.center,
                        children: [
                          VideoThumbnail(imgPath: "assets/Images/img1.png"),
                          VideoThumbnail(imgPath: "assets/Images/img2.png"),
                          VideoThumbnail(imgPath: "assets/Images/img3.png"),
                        ],
                      ),
                    ],
                  );
                },
              )
            : ExtendedWatchList();
      }),
    );
  }
}


