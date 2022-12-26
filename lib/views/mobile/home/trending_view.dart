import 'package:shoofi/routes/routes.dart';
import '../register_location/register_location_view.dart';
import '../trending/all_category_view.dart';
import '../trending/facebook_trending_view.dart';
import '../trending/instagram_trending_view.dart';
import '../trending/youtube_trending_view.dart';

class HomeTrendingView extends StatelessWidget {
  const HomeTrendingView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeTrendingController controller =
        Get.put(HomeTrendingController(), tag: "trending");
    List<Widget> screens = [
      YoutubeTrendingView(),
      FacebookTrendingView(),
      InstagramTrendingView(),
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
                Get.to(RegisterLocationView(showBtn: false));
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
            physics: NeverScrollableScrollPhysics(),
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
                    AllCategoryView(previousIndex: controller.previousIndex));
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
