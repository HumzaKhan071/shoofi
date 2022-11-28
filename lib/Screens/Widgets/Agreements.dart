import 'package:shoofi/Routes/routes.dart';

class Agreements extends StatelessWidget {
  const Agreements({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(TextSpan(
            text: "by continuing you agree to",
            style: TextStyle(
              fontSize: 12,
              color: textColor,
            ),
            children: [
              TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = (() {
                      Get.to(() => UserAgreementScreen());
                    }),
                  text: " Terms of Service",
                  style: TextStyle(
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
            style: TextStyle(
              fontSize: 12,
              color: textColor,
            ),
            children: [
              TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.to(() => PrivacyScreen());
                    },
                  text: " Privacy Policies",
                  style: TextStyle(
                      fontSize: 12,
                      color: blue,
                      decoration: TextDecoration.underline,
                      decorationColor: grey,
                      decorationStyle: TextDecorationStyle.wavy)),
            ])),
      ],
    );
  }
}
