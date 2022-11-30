import 'package:intro_slider/intro_slider.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/controllers/GetStartedControllers/get_started2_controller.dart';

class GetStarted2 extends StatelessWidget {
  const GetStarted2({super.key});

  @override
  Widget build(BuildContext context) {
    GetStarted2Controller controller = GetStarted2Controller();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: Get.height * 0.1),
          Image.asset("assets/images/logo3.png"),
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
