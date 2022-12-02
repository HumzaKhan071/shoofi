import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Utils/image_constant.dart';

class MyNotificationsLisTile extends StatelessWidget {
  const MyNotificationsLisTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: Image.asset(ImageConstant.img2),
            title: Text("The Most Perfect Co...",
                style: TextStyle(
                  color: black,
                  fontSize: 16,
                )),
            subtitle: Text(
              "11/10/2022",
              style: TextStyle(color: grey),
            ),
            trailing: Image.asset(ImageConstant.removeCircle)),
        ListTile(
            minLeadingWidth: 0,
            leading: Image.asset(ImageConstant.img2),
            title: Text("The Most Perfect Co...",
                style: TextStyle(
                  color: black,
                  fontSize: 16,
                )),
            subtitle: Text(
              "11/10/2022",
              style: TextStyle(color: grey),
            ),
            trailing: Image.asset(ImageConstant.removeCircle))
      ],
    );
  }
}