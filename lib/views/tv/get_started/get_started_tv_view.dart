import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/tv/sign_in/sign_in_tv_view.dart';

class GetStartedTvView extends StatelessWidget {
  const GetStartedTvView({super.key});

  @override
  Widget build(BuildContext context) {
    GetStartedController controller = GetStartedController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(ImageConstant.logo3),
              const SizedBox(
                height: 30,
              ),
              Container(
                  height: 255,
                  width: 245,
                  child: Image.asset(ImageConstant.illustration1Tv)),
              SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  text: "Avail The Most Out of Our ",
                  style: TextStyle(
                    color: black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: "All-In-One",
                      style: TextStyle(
                        color: yellow,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Platform Designed",
                style: TextStyle(
                  color: yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 20),
              Container(
                  height: 13,
                  width: 68.5,
                  child: Image.asset(ImageConstant.indicator)),
              SizedBox(
                height: 20,
              ),
              MyButtonContainer(
                conColor: yellow,
                text: "Sign In",
                width: 343,
                press: () {
                  Get.to(SignInTvView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
