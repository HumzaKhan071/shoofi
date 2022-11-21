import 'package:shoofi/Routes/routes.dart';


class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/Images/logo3.png"),
              const SizedBox(
                height: 30,
              ),
              Image.asset("assets/Images/illustration1.png"),
              const SizedBox(
                height: 30,
              ),
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
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(TextSpan(
                  text: "by continuing you agree to",
                  style: GoogleFonts.archivo(
                    fontSize: 12,
                    color: textColor,
                  ),
                  children: [
                    TextSpan(
                        text: " Terms of Service",
                        style: GoogleFonts.archivo(
                            fontSize: 12,
                            color: blue,
                            decoration: TextDecoration.underline,
                            decorationColor: grey,
                            decorationStyle: TextDecorationStyle.wavy)),
                  ])),
              const SizedBox(
                height: 10,
              ),
              Text.rich(TextSpan(
                  text: "and",
                  style: GoogleFonts.archivo(
                    fontSize: 12,
                    color: textColor,
                  ),
                  children: [
                    TextSpan(
                        text: " Privacy Policies",
                        style: GoogleFonts.archivo(
                            fontSize: 12,
                            color: blue,
                            decoration: TextDecoration.underline,
                            decorationColor: grey,
                            decorationStyle: TextDecorationStyle.wavy)),
                  ])),
            ],
          )),
    );
  }
}
