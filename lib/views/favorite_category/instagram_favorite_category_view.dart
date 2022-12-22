import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/select_plan/select_plan_view.dart.dart';

class InstagramFavoriteCategoryView extends StatefulWidget {
  const InstagramFavoriteCategoryView({super.key});

  @override
  State<InstagramFavoriteCategoryView> createState() =>
      _InstagramFavoriteCategoryViewState();
}

class _InstagramFavoriteCategoryViewState
    extends State<InstagramFavoriteCategoryView> {
  List<MyInstagramModel> myInstagramModel = [
    MyInstagramModel(ImageConstant.akon),
    MyInstagramModel(ImageConstant.bieber),
    MyInstagramModel(ImageConstant.bts),
    MyInstagramModel(ImageConstant.bucks),
    MyInstagramModel(ImageConstant.cartoon),
    MyInstagramModel(ImageConstant.coke),
    MyInstagramModel(ImageConstant.eclipse),
    MyInstagramModel(ImageConstant.fox),
    MyInstagramModel(ImageConstant.girl),
    MyInstagramModel(ImageConstant.italy),
    MyInstagramModel(ImageConstant.men),
    MyInstagramModel(ImageConstant.obama),
    MyInstagramModel(ImageConstant.peppes),
    MyInstagramModel(ImageConstant.rock),
    MyInstagramModel(ImageConstant.ronaldo),
    MyInstagramModel(ImageConstant.spark),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(title: "Sign Up")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              LinearProgressIndicator(
                value: 0.5,
                backgroundColor: grey,
                valueColor: AlwaysStoppedAnimation<Color>(yellow),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Text("Welcome to Shoofi",
                      style: TextStyle(
                          color: grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold)),
                  Text.rich(
                    TextSpan(
                        text: "Pick Your favourite ",
                        style: TextStyle(
                          color: grey,
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text: "Instagram ",
                            style: TextStyle(
                                color: black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "Channels",
                            style: TextStyle(
                                color: grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 40),
              GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                childAspectRatio: 2 / 2.3,
                physics: BouncingScrollPhysics(),
                children: List.generate(
                    myInstagramModel.length,
                    (index) => MyInstagramContainer(
                          image: myInstagramModel[index].image,
                        )),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 135,
        child: Column(
          children: [
            SizedBox(height: 20),
            MyButtonContainer(
              text: "Next",
              conColor: yellow,
              press: () {
                Get.to(() => SelectPlanView());
              },
            ),
            SizedBox(
              height: 10,
            ),
            Agreements()
          ],
        ),
      ),
    );
  }
}

class MyInstagramModel {
  final String image;

  MyInstagramModel(this.image);
}
