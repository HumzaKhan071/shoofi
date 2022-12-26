
import 'package:shoofi/routes/routes.dart';

class SelectPlanFeature extends StatelessWidget {
  final FontWeight fontWeight;
  final String text;
  const SelectPlanFeature({
    Key? key,
    required this.text,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 22,
          width: 22,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: yellow,
          ),
          child: Icon(Icons.check, color: Colors.white, size: 20),
        ),
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(color: black, fontSize: 12, fontWeight: fontWeight),
        )
      ],
    );
  }
}
