import 'package:shoofi/Channel%20Detail/About.dart';
import 'package:shoofi/Routes/routes.dart';

class ChanneledDetail extends StatefulWidget {
  const ChanneledDetail({super.key});

  @override
  State<ChanneledDetail> createState() => _ChanneledDetailState();
}

class _ChanneledDetailState extends State<ChanneledDetail>
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
                title: Image.asset("assets/Images/logo3.png"),
                leading: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: black,
                    )),
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
                        text: "Home",
                      ),
                      Tab(
                        text: "Videos",
                      ),
                      Tab(
                        text: "Playlists",
                      ),
                      Tab(
                        text: "About",
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
                About()
               
              ]))),
    );
  }
}
