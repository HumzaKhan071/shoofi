import 'package:shoofi/Routes/routes.dart';

class ExtendedWatchList extends StatelessWidget {
  const ExtendedWatchList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeWatchListControler controler = Get.find(tag: "watchlist");
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.0, bottom: 15, top: 20),
                child: Text(
                  controler.selectedTile,
                  style: GoogleFonts.archivo(
                      color: black, fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Wrap(
                spacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  VideoThumbnail(
                      imgPath: "assets/Images/img1.png",
                      onLongPress: () {
                        remvoeWatchListBottomSheet();
                      }),
                  VideoThumbnail(
                      imgPath: "assets/Images/img2.png",
                      onLongPress: () {
                        remvoeWatchListBottomSheet();
                      }),
                  VideoThumbnail(
                      imgPath: "assets/Images/img3.png",
                      onLongPress: () {
                        remvoeWatchListBottomSheet();
                      }),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}