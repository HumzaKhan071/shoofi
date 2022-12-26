import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/tv/profile/profile_tv_view.dart';

class SignInTvView extends StatelessWidget {
  const SignInTvView({super.key});

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
        body: Column(
          children: [
            ClipPath(
              clipper: CustomShape(),
              child: Container(
                color: black,
                height: Get.height * 0.28,
                child: Center(child: Image.asset(ImageConstant.logo4)),
              ),
            ),
            SizedBox(
              height: Get.height * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: CustomTextField(
                text: "Email",
                containerWidth: 340,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: PasswordTextField(
                text: "Password",
                containerWidth: 340,
              ),
            ),
            SizedBox(height: 20),
            MyButtonContainer(
              text: "Sign in",
              conColor: yellow,
              width: 340,
              press: () {
                Get.to(ProfileTvView());
              },
            ),
          ],
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
