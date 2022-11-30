import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/LoginScreens/login_screen.dart';
import 'package:shoofi/Utils/image_constant.dart';
import 'package:shoofi/controllers/GetStartedControllers/get_started_controller.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    GetStartedController controller = GetStartedController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              SvgPicture.asset(ImageConstant.logo3),
              const SizedBox(
                height: 30,
              ),
              Image.asset(ImageConstant.illustration1),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButtonContainer(
                      conColor: yellow,
                      text: "Register",
                      press: () {
                        Get.to(() => RegisterScreen());
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  MyButtonContainer(
                    conColor: grey,
                    text: "Sign In",
                    press: () {
                      Get.to(LoginScreen());
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Agreements(),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
