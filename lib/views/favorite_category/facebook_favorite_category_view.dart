import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/favorite_category/instagram_favorite_category_view.dart';

class FacebookFavoriteCategoryView extends StatefulWidget {
  const FacebookFavoriteCategoryView({super.key});

  @override
  State<FacebookFavoriteCategoryView> createState() =>
      _FacebookFavoriteCategoryViewState();
}

class _FacebookFavoriteCategoryViewState
    extends State<FacebookFavoriteCategoryView> {
  List<MyFacebookModel> myFacebookModel = [
    MyFacebookModel(ImageConstant.akon),
    MyFacebookModel(ImageConstant.bieber),
    MyFacebookModel(ImageConstant.bts),
    MyFacebookModel(ImageConstant.bucks),
    MyFacebookModel(ImageConstant.cartoon),
    MyFacebookModel(ImageConstant.coke),
    MyFacebookModel(ImageConstant.eclipse),
    MyFacebookModel(ImageConstant.fox),
    MyFacebookModel(ImageConstant.girl),
    MyFacebookModel(ImageConstant.italy),
    MyFacebookModel(ImageConstant.men),
    MyFacebookModel(ImageConstant.obama),
    MyFacebookModel(ImageConstant.peppes),
    MyFacebookModel(ImageConstant.rock),
    MyFacebookModel(ImageConstant.ronaldo),
    MyFacebookModel(ImageConstant.spark),
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
                            fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                            text: "Facebook ",
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
                    myFacebookModel.length,
                    (index) => MyFacebookContainer(
                          image: myFacebookModel[index].image,
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
                Get.to(() => InstagramFavoriteCategoryView());
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

class MyFacebookModel {
  final String image;

  MyFacebookModel(this.image);
}
