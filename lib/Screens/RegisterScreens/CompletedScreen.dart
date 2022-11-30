import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Utils/image_constant.dart';

class CompletedScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String subtitle2;

  const CompletedScreen(
      {super.key,
      this.title = "Congratulation your signup is completed",
      this.subtitle = "Enjoy your",
      this.subtitle2 = "90 Days free trail"});

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
                value: 0.1,
                backgroundColor: grey,
                valueColor: AlwaysStoppedAnimation<Color>(yellow),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 31,
                width: 293,
                child: Center(
                  child: Text(title,
                      style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 281,
                width: 256,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageConstant.firework),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Image.asset(ImageConstant.a),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 61,
                width: 323,
                child: Center(
                    child: Column(
                  children: [
                    Text(
                      subtitle.toUpperCase(),
                      style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle2.toUpperCase(),
                      style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ),
              SizedBox(height: 20),
              MyButtonContainer(
                text: "Next",
                conColor: yellow,
                press: () {
                  Get.to(() => CreateUserProfileScreen());
                },
              ),
              SizedBox(height: 10),
              Agreements()
            ],
          ),
        ),
      ),
    );
  }
}
