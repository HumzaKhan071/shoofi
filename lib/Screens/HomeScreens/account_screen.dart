import 'package:shoofi/Routes/routes.dart';

class HomeAccountScreen extends StatelessWidget {
  const HomeAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.arrow_back_ios_new_rounded),
            Text("General Settings")
          ],
        ),
        Divider(
          indent: 10,
          endIndent: 10,
          thickness: 1,
          color: grey,
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon1.png"),
          title: Text("data"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon1.png"),
          title: Text("data"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon1.png"),
          title: Text("data"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon1.png"),
          title: Text("data"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon1.png"),
          title: Text("data"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon1.png"),
          title: Text("data"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon1.png"),
          title: Text("data"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    );
  }
}
