import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/favorite_category/facebook_favorite_category_view.dart';

class YoutubeFavoriteCategoryView extends StatelessWidget {
  List<MyYoutubeModel> myYoutubeModel = [
    MyYoutubeModel(ImageConstant.akon),
    MyYoutubeModel(ImageConstant.bts),
    MyYoutubeModel(ImageConstant.bulb),
    MyYoutubeModel(ImageConstant.d),
    MyYoutubeModel(ImageConstant.dp),
    MyYoutubeModel(ImageConstant.fruit),
    MyYoutubeModel(ImageConstant.girls),
    MyYoutubeModel(ImageConstant.goldMines),
    MyYoutubeModel(ImageConstant.ko),
    MyYoutubeModel(ImageConstant.mind),
    MyYoutubeModel(ImageConstant.nastya),
    MyYoutubeModel(ImageConstant.niki),
    MyYoutubeModel(ImageConstant.sonySab),
    MyYoutubeModel(ImageConstant.wwe),
    MyYoutubeModel(ImageConstant.zeemusic),
    MyYoutubeModel(ImageConstant.zeetv),
    MyYoutubeModel(ImageConstant.sonySab),
    MyYoutubeModel(ImageConstant.wwe),
    MyYoutubeModel(ImageConstant.zeemusic),
    MyYoutubeModel(ImageConstant.zeetv),
  ];

  YoutubeFavoriteCategoryView({super.key});

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
                            text: "Youtube ",
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
                    myYoutubeModel.length,
                    (index) => MyYoutubeContainer(
                          image: myYoutubeModel[index].image,
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
                Get.to(() => FacebookFavoriteCategoryView());
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

class MyYoutubeModel {
  final String image;

  MyYoutubeModel(this.image);
}
