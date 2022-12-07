import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HomeScreens/all_categories.dart';
import 'package:shoofi/Screens/Widgets/language_dropdown.dart';
import 'package:shoofi/Screens/youtube_home/youtube_home.dart';
import 'package:shoofi/controllers/Home/trending_controller.dart';
import 'package:shoofi/Utils/image_constant.dart';

class HomeTrendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeTrendingController controller =
        Get.put(HomeTrendingController(), tag: "trending");
    List<Widget> screens = [
      YouTubeHome(),
      YouTubeHome(),
      YouTubeHome(),
      Container()
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: SvgPicture.asset(ImageConstant.logo3),
          ),
          actions: [
            Icon(
              Icons.connected_tv_rounded,
              color: black,
            ),
            IconButton(
              onPressed: () {
                Get.to(RegisterScreenLocation(showBtn: false));
              },
              icon: Icon(
                Icons.add_location_outlined,
                color: black,
              ),
            ),
            SizedBox(width: 10),
            SizedBox(
              height: 48,
              width: 75,
              child: languageDropDown(controller),
            ),
          ],
          bottom: TabBar(
            controller: controller.tabController,
            labelColor: black,
            labelStyle: TextStyle(
              fontSize: 14,
              color: black,
              fontWeight: FontWeight.bold,
            ),
            indicatorColor: yellow,
            tabs: [
              Tab(
                text: "Youtube",
              ),
              Tab(
                text: "Facebook",
              ),
              Tab(
                text: "Instagram",
              ),
              Tab(
                text: "Category",
              ),
            ],
            onTap: (index) {
              if (index == 3) {
                Get.to(
                    AllCategorySheet(previousIndex: controller.previousIndex));
              } else {
                controller.previousIndex = index;
              }
            },
          ),
        ),
        body: TabBarView(
            controller: controller.tabController, children: screens));
  }
}
