import 'package:shoofi/Routes/routes.dart';


class AuthorChannel extends StatelessWidget {
  const AuthorChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 230,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 157,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.channelBg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 30,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            ProfileContainer(
                              containerHeight: 52,
                              containerWidth: 52,
                              imageHeight: 46,
                              imageWidth: 46,
                            
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Epic Channel",
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Text(
                              "9.5 M Subscribers",
                              style: TextStyle(color: grey, fontSize: 11),
                            ),
                            Text(
                              "769 Videos",
                              style: TextStyle(color: grey, fontSize: 11),
                            )
                          ],
                        ),
                        SizedBox(width: 40),
                        Container(
                          height: 30,
                          width: Get.width * 0.8,
                          child: TabBar(indicatorColor: yellow, tabs: [
                            Tab(
                              child: Text(
                                "Home",
                                style: TextStyle(color: black, fontSize: 10),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Videos",
                                style: TextStyle(color: black, fontSize: 10),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Playlists",
                                style: TextStyle(color: black, fontSize: 10),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "About",
                                style: TextStyle(color: black, fontSize: 10),
                              ),
                            ),
                          ]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                              color: black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exerc",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Details",
                          style: TextStyle(
                              color: black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exerc",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
