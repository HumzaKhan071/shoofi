import 'package:shoofi/Routes/routes.dart';

class EditProfileContainer extends StatelessWidget {
  final press;
  final String text;

  const EditProfileContainer({
    Key? key,
    required this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 48,
        width: 343,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: black,
              width: 1,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 10),
            Icon(Icons.edit_outlined),
          ],
        ),
      ),
    );
  }
}
