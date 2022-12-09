import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/HelpCenter/FaqScreen.dart';


class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabController!.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 40,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: grey,
              )),
          centerTitle: true,
          title: Text(
            "Help Center",
            style: TextStyle(
              color: black,
              fontSize: 14,
               fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: 0.0,
                  backgroundColor: grey,
                  valueColor: AlwaysStoppedAnimation<Color>(yellow),
                ),
                TabBar(
                  controller: _tabController,
                  indicatorColor: yellow,
                  labelColor: black,
                  labelStyle: TextStyle(
                    fontSize: 14,
                  ),
                  unselectedLabelColor: grey,
                  tabs: [
                    Tab(
                      text: "FAQ",
                    ),
                    Tab(
                      text: "Contact Us",
                    ),
                  ],
                ),
                SizedBox(
                  height: 500,
                  child: TabBarView(
                    controller: _tabController,
                    children: [FaqScreen(), ContactUsScreen()],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
