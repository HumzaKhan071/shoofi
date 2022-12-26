import 'package:shoofi/routes/routes.dart';

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
                      termsAndConditons(context);
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
                      termsAndConditons(context);
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

  termsAndConditons(context) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10),
                CustomAppBar(title: "Terms and Conditions"),
                LinearProgressIndicator(
                  value: 0,
                  backgroundColor: grey,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 25.0, bottom: 25, left: 10, right: 10),
                    child: Text(textAlign: TextAlign.center, ""),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
