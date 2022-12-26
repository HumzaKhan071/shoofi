
import 'package:shoofi/routes/routes.dart';

Widget customListTileForMoreOptions(
    {required Widget textWidget, required String imagePath, required onTap}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          SizedBox(width: 20),
          Image.asset(imagePath, color: Colors.black),
          SizedBox(width: 20),
          textWidget
        ],
      ),
    ),
  );
}
