import 'package:shoofi/Routes/routes.dart';

class SelectPlan extends StatefulWidget {
  const SelectPlan({super.key});

  @override
  State<SelectPlan> createState() => _SelectPlanState();
}

class _SelectPlanState extends State<SelectPlan>
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
            "Sign Up",
            style: GoogleFonts.archivo(
                color: black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: 0.7,
                  backgroundColor: grey,
                  valueColor: AlwaysStoppedAnimation<Color>(yellow),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                    height: 31,
                    width: 293,
                    child: Center(
                      child: Text(
                        "Activate you 90 days trail now",
                        style: GoogleFonts.archivo(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 418,
                  padding:
                      EdgeInsets.only(top: 10, bottom: 3, left: 3, right: 3),
                  width: 341,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: yellow,
                        width: 1,
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Activate you 90 days trail now",
                        style: GoogleFonts.archivo(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 44,
                        width: 265,
                        decoration: BoxDecoration(
                          color: grey,
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: TabBar(
                            controller: _tabController,
                            padding: EdgeInsets.all(5),
                            labelColor: black,
                            indicator: BoxDecoration(
                                color: yellow,
                                borderRadius: BorderRadius.circular(21)),
                            tabs: [
                              Tab(
                                child: Text("Monthly"),
                              ),
                              Tab(
                                child: Text("Yearly"),
                              )
                            ]),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                          child:
                              TabBarView(controller: _tabController, children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyMonthlyPlanContainer(
                                title: "Essential Plan",
                                color: yellow,
                                description: "save 16% with annual blilling",
                                totalScreens: "Create 2 Screens",
                                perMonth: "\$8/Month"),
                            MyMonthlyPlanContainer(
                                title: "Premuim Plan",
                                color: yellow,
                                description: "save 16% with annual blilling",
                                totalScreens: "Create 4 Screens",
                                perMonth: "\$9/Month"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyYearlyPlanContainer(
                                title: "Essential Plan",
                                price: "Annually billed \$48",
                                color: yellow,
                                description: "save 16% with annual blilling",
                                totalScreens: "Create 2 Screens",
                                perMonth: "\$4/Month"),
                            MyYearlyPlanContainer(
                                title: "Premuim Plan",
                                price: "Annually billed \$72",
                                color: yellow,
                                description: "save 16% with annual blilling",
                                totalScreens: "Create 4 Screens",
                                perMonth: "\$6/Month")
                          ],
                        )
                      ])),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 116,
                        width: 225,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyPlanRow(
                                text: "No credit card required",
                                fontWeight: FontWeight.w500),
                            SizedBox(height: 5),
                            MyPlanRow(
                                text: "90 Days free trail version included",
                                fontWeight: FontWeight.bold),
                            SizedBox(height: 5),
                            MyPlanRow(
                                text: "Cancel anytime you want",
                                fontWeight: FontWeight.w500),
                            SizedBox(height: 5),
                            MyPlanRow(
                                text: "90 Days free trail version included",
                                fontWeight: FontWeight.w500),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                MyButtonContainer(
                  text: "Activate Trial",
                  conColor: yellow,
                  press: () {
                    Get.to(() => PaymentsScreen());
                  },
                ),
                SizedBox(height: 10),
              Agreements()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
