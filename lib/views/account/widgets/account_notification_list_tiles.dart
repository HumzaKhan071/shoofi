import '../../../Routes/routes.dart';

class AccountNotificationListTiles extends StatelessWidget {
  const AccountNotificationListTiles({
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
