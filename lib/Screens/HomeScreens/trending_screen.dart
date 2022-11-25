import 'package:shoofi/Routes/routes.dart';

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
                leading: Image.asset(
                  "assets/Images/logo2.png",
                  height: 30,
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
                  Icon(
                    Icons.pin_drop,
                    color: black,
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    height: 48,
                    width: 50,
                    child: DropdownButton(
                        isExpanded: true,
                        underline: Container(),
                        value: dropdownvalue,
                        style: TextStyle(
                            color: black,
                            fontSize: 15,
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
                    ]),
              ),
              body: TabBarView(controller: _tabController, children: [
                Center(
                  child: Text("Youtube"),
                ),
                Center(
                  child: Text("Facebook"),
                ),
                Center(
                  child: Text("Instagram"),
                ),
                Center(
                  child: Text("Category"),
                )
              ]))),
    );
  }
}
