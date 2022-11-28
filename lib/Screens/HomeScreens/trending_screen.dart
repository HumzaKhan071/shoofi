import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HomeScreens/all_categories.dart';
import 'package:shoofi/Screens/youtube_home/youtube_home.dart';

class HomeTrendingScreen extends StatefulWidget {
  const HomeTrendingScreen({super.key});

  @override
  State<HomeTrendingScreen> createState() => _HomeTrendingScreenState();
}

class _HomeTrendingScreenState extends State<HomeTrendingScreen>
    with SingleTickerProviderStateMixin {
  String dropdownvalue = 'EN';
  var items = ['EN', 'US', 'UR'];
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: _tabController!.length,
          child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leadingWidth: 100,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Image.asset("assets/Images/logo3.png"),
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
                  Container(
                    padding: EdgeInsets.only(top: 3, right: 5),
                    height: 48,
                    width: 50,
                    child: DropdownButton(
                        isExpanded: true,
                        icon: Image.asset("assets/Images/arrow_downward.png"),
                        underline: Container(),
                        value: dropdownvalue,
                        style: TextStyle(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
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
                  ),
                ],
                bottom: TabBar(
                    controller: _tabController,
                    labelColor: black,
                    labelStyle: TextStyle(
                        fontSize: 14,
                        color: black,
                        fontWeight: FontWeight.bold),
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
                    ]),
              ),
              body: TabBarView(controller: _tabController, children: [
                YouTubeHome(),
                YouTubeHome(),
                YouTubeHome(),
                AllCategorySheet()
              ]))),
    );
  }
}
