import '../../Routes/routes.dart';

class HomeSearchView extends StatefulWidget {
  const HomeSearchView({super.key});

  @override
  State<HomeSearchView> createState() => _HomeSearchViewState();
}

class _HomeSearchViewState extends State<HomeSearchView> {
  HomeBottomNavigationBarController homeBottomNavigationBarController =
      Get.find(tag: "bottomNavigation");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CustomTextField(
              text: "Search or Paste URL",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              contentTopPadding: 13,
              suffixIcon: IconButton(
                onPressed: () {
                  filterBottomSheet();
                },
                icon: Icon(
                  Icons.filter_list_alt,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 15),
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Wrap(
                    spacing: 10,
                    alignment: WrapAlignment.center,
                    children: [
                      VideoThumbnail(
                        imgPath: "assets/images/img1.png",
                        onTap: () async {
                          await Get.bottomSheet(VideoPlayerView(),
                              isScrollControlled: true);
                          homeBottomNavigationBarController
                              .isVideoPlayingInMiniplayer.value = true;
                        },
                      ),
                      VideoThumbnail(
                        imgPath: "assets/images/img2.png",
                        onTap: () async {
                          await Get.bottomSheet(VideoPlayerView(),
                              isScrollControlled: true);
                          homeBottomNavigationBarController
                              .isVideoPlayingInMiniplayer.value = true;
                        },
                      ),
                      VideoThumbnail(
                        imgPath: "assets/images/img3.png",
                        onTap: () async {
                          await Get.bottomSheet(VideoPlayerView(),
                              isScrollControlled: true);
                          homeBottomNavigationBarController
                              .isVideoPlayingInMiniplayer.value = true;
                        },
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyFilterRow extends StatefulWidget {
  final String text;
  const MyFilterRow({super.key, required this.text});

  @override
  State<MyFilterRow> createState() => _MyFilterRowState();
}

class _MyFilterRowState extends State<MyFilterRow> {
  String dropdownvalue = 'Relevance';
  var items = ['Relevance', 'Text 1', 'Text 1'];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: TextStyle(
              color: black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Container(
          height: 50,
          width: 150,
          padding: EdgeInsets.all(10),
          child: DropdownButton(
              isExpanded: true,
              underline: Container(),
              value: dropdownvalue,
              style: TextStyle(
                color: black,
                fontSize: 15,
              ),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              }),
        )
      ],
    );
  }
}
