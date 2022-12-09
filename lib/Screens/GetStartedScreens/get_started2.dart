
import 'package:shoofi/Routes/routes.dart';



class GetStarted2 extends StatelessWidget {
  const GetStarted2({super.key});

  @override
  Widget build(BuildContext context) {
    GetStarted2Controller controller = GetStarted2Controller();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: Get.height * 0.1),
          Image.asset(ImageConstant.logo3),
          SizedBox(height: Get.height * 0.1),
          SizedBox(
            height: Get.height * 0.58,
            child: IntroSlider(
              isShowNextBtn: false,
              isShowDoneBtn: false,
              isShowSkipBtn: false,
              isShowPrevBtn: false,
              indicatorConfig: IndicatorConfig(sizeIndicator: 13),
              listCustomTabs: controller.getSlides(),
            ),
          ),
          MyButtonContainer(
              conColor: yellow,
              text: "Get Started",
              press: () {
                Get.to(() => RegisterScreen());
              }),
          SizedBox(height: 10),
          Agreements(),
        ],
      ),
    );
  }
}
