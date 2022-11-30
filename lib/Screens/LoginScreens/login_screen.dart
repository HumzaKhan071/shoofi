import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/ForgotScreens/ForgotEmail.dart';
import 'package:shoofi/Utils/image_constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: CustomShape(),
                child: Container(
                  color: black,
                  height: Get.height * 0.28,
                  child: Center(child: Image.asset(ImageConstant.logo4)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MyTextField(text: "Email"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MyPasswordField(text: "Password"),
              ),
              MyButtonContainer(
                text: "Sign in",
                conColor: yellow,
                press: () {
                  Get.to(CreateUserProfileScreen());
                },
              ),
              SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Get.to(ForgotEmail());
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: blue, fontSize: 12, fontWeight: FontWeight.w500),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: Divider(
                  thickness: 2,
                  indent: Get.width * 0.1,
                  endIndent: Get.width * 0.1,
                ),
              ),
              Text.rich(TextSpan(
                  text: "Is it first time for you to? ",
                  style: TextStyle(color: black, fontSize: 16),
                  children: [
                    TextSpan(
                        text: "Sign in",
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = (() {})),
                  ])),
              SizedBox(height: 5),
              Text.rich(TextSpan(
                  text: "OR ",
                  style: TextStyle(color: black, fontSize: 16),
                  children: [
                    TextSpan(
                        text: "Register Now ",
                        style: TextStyle(
                          color: yellow,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = (() {
                            Get.to(RegisterScreen());
                          })),
                    TextSpan(
                      text: "with",
                      style: TextStyle(color: black, fontSize: 16),
                    ),
                  ])),
              SizedBox(height: 15),
              MyButtonContainer(
                press: () {
                  Get.to(RegisterScreen2());
                },
                text: "Continue with Apple",
                textColor: Colors.white,
                conColor: black,
                imgPath: ImageConstant.apple,
              ),
              SizedBox(height: 10),
              MyButtonContainer(
                press: () {
                  Get.to(RegisterScreen2());
                },
                text: "Continue with Facebook",
                textColor: Colors.white,
                conColor: fbColor,
                imgPath: ImageConstant.facebook1,
              ),
              SizedBox(height: 10),
              MyButtonContainer(
                press: () {
                  Get.to(RegisterScreen2());
                },
                text: "Continue with Google",
                textColor: Colors.white,
                conColor: googleBttonColor,
                imgPath: ImageConstant.google,
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

class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height);
    path.quadraticBezierTo(width / 2, height - 50, width, height);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
