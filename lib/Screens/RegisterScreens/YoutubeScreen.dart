import 'package:shoofi/Routes/routes.dart';

class YoutubeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          child: CustomAppBar(title: "Sign Up"),
          preferredSize: Size.fromHeight(50)),
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
      bottomNavigationBar: Container(
        height: 135,
        child: Column(
          children: [
            SizedBox(height: 20),
            MyButtonContainer(
              text: "Next",
              conColor: yellow,
              press: () {
                Get.to(() => FacebookScreen());
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
