import 'package:shoofi/routes/routes.dart';

class MyButtonContainer extends StatelessWidget {
  final String text;
  final Color conColor;
  final String? imgPath;
  double? height;
  double? width;
  final Color textColor;
  final press;
  MyButtonContainer({
    Key? key,
    required this.text,
    required this.conColor,
    this.press,
    this.imgPath,
    this.height,
    this.width,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 48,
      width: width ?? Get.width * 0.9,
      decoration: BoxDecoration(
        color: conColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextButton(
          onPressed: () {
            press();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imgPath != null ? Image.asset(imgPath!) : SizedBox(),
              imgPath != null ? SizedBox(width: 5) : SizedBox(),
              Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
