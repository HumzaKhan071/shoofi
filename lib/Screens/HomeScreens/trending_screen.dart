import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HomeScreens/all_categories.dart';
import 'package:shoofi/Screens/youtube_home/youtube_home.dart';
import 'package:shoofi/controllers/Home/trending_controller.dart';

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
    return DefaultTabController(
        length: screens.length,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: Image.asset(
                "assets/Images/logo2.png",
                height: 15,
              ),
              title: Text(
                "Shoofi",
                style: GoogleFonts.archivo(
                    fontSize: 30, color: black, fontWeight: FontWeight.bold),
              ),
              actions: [
                Icon(
                  Icons.cast,
                  color: black,
                ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    Get.to(RegisterScreenLocation(showBtn: false));
                  },
                  icon: Icon(
                    Icons.pin_drop,
                    color: black,
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  height: 48,
                  width: 50,
                  child: Obx(() => DropdownButton(
                      isExpanded: true,
                      underline: Container(),
                      value: controller.dropdownvalue.value,
                      style: TextStyle(
                          color: black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      items: controller.items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        controller.dropdownvalue.value = newValue as String;
                      })),
                ),
              ],
              bottom: TabBar(
                  labelColor: black,
                  labelStyle: GoogleFonts.archivo(
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
                      Get.to(AllCategorySheet());
                    } else {
                      controller.index.value = index;
                    }
                  }),
            ),
            body: Obx(() => screens[controller.index.value])));
  }
}
