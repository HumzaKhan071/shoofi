import 'package:shoofi/Routes/routes.dart';

class MyButtonContainer extends StatelessWidget {
  final String text;
  final Color conColor;
  final press;
  const MyButtonContainer({
    Key? key,
    required this.text,
    required this.conColor,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        color: conColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextButton(
          onPressed: () {
            press();
          },
          child: Text(
            text,
            style: GoogleFonts.archivo(
                color: black, fontSize: 16, fontWeight: FontWeight.bold),
          )),
    );
  }
}
