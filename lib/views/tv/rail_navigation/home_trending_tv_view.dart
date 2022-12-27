import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/register_location/register_location_tv_view.dart';
import 'package:shoofi/views/tv/trending/all_category_tv_view.dart';
import 'package:shoofi/views/tv/trending/facebook_trending_tv_view.dart';
import 'package:shoofi/views/tv/trending/instagram_trending_tv_view.dart';
import 'package:shoofi/views/tv/trending/youtube_trending_tv_view.dart';

class HomeTrendingTvView extends StatelessWidget {
  const HomeTrendingTvView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeTrendingController controller =
        Get.put(HomeTrendingController(), tag: "trending");
    List<Widget> screens = [
      YoutubeTrendingTvView(),
      FacebookTrendingTvView(),
      InstagramTrendingTvView(),
      AllCategoriesTvView()
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 100,
         
          actions: [
            Icon(
              Icons.connected_tv_rounded,
              color: black,
            ),
            IconButton(
              onPressed: () {
                Get.to(RegisterLocationTvView());
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
                child: languageDropDown(
                    dropdownvalue: controller.dropdownvalue,
                    items: controller.items)),
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
              controller.previousIndex = index;
            },
          ),
        ),
        body: TabBarView(
            controller: controller.tabController, children: screens));
  }
}
