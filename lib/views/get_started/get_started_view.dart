import '../../Routes/routes.dart';
import '../register_profile/register_profile_view.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

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
                        Get.to(() => RegisterProfileView());
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  MyButtonContainer(
                    conColor: grey,
                    text: "Sign In",
                    press: () {
                      Get.to(LoginView());
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
