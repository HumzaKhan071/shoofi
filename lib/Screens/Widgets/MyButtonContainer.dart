import 'package:shoofi/Routes/routes.dart';

class MyButtonContainer extends StatelessWidget {
  final String text;
  final Color conColor;
  final String? imgPath;
  final Color textColor;
  final press;
  const MyButtonContainer({
    Key? key,
    required this.text,
    required this.conColor,
    this.press,
    this.imgPath,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: Get.width * 0.9,
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
                style: GoogleFonts.archivo(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
