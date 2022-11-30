import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/controllers/Plan/select_plan_controller.dart';

class SelectPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SelectPlanController controller =
        Get.put(SelectPlanController(), tag: "select_plan");
    return DefaultTabController(
      length: controller.tabController.length,
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
            style: TextStyle(
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
                        style: TextStyle(
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
                        style: TextStyle(
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
                            controller: controller.tabController,
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
                          child: TabBarView(
                              controller: controller.tabController,
                              children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyPlanContainer(
                                    title: "Essential Plan",
                                    index: 0,
                                    description:
                                        "save 16% with annual blilling",
                                    totalScreens: "Create 2 Screens",
                                    perMonth: "\$8/Month"),
                                MyPlanContainer(
                                    title: "Premuim Plan",
                                    index: 1,
                                    description:
                                        "save 16% with annual blilling",
                                    totalScreens: "Create 4 Screens",
                                    perMonth: "\$9/Month"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyPlanContainer(
                                    title: "Essential Plan",
                                    price: "Annually billed \$48",
                                    index: 2,
                                    description:
                                        "save 16% with annual blilling",
                                    totalScreens: "Create 2 Screens",
                                    perMonth: "\$4/Month"),
                                MyPlanContainer(
                                    title: "Premuim Plan",
                                    price: "Annually billed \$72",
                                    index: 3,
                                    description:
                                        "save 16% with annual blilling",
                                    totalScreens: "Create 4 Screens",
                                    perMonth: "\$6/Month")
                              ],
                            )
                          ])),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 116,
                        width: 227,
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
