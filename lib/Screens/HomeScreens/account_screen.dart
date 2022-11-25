import 'package:shoofi/Routes/routes.dart';

class HomeAccountScreen extends StatelessWidget {
  const HomeAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        ListTile(
            leading: Icon(Icons.arrow_back_ios_new_rounded),
            title: Center(
                child: Text(
              "General Settings",
              style: GoogleFonts.archivo(
                  color: black, fontSize: 16, fontWeight: FontWeight.bold),
            ))),
        Divider(
          indent: 10,
          endIndent: 10,
          thickness: 1,
          color: grey,
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon1.png"),
          title: Text(
            "General",
            style: GoogleFonts.archivo(
                color: black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon2.png"),
          title: Text(
            "Video quality preferences",
            style: GoogleFonts.archivo(
                color: black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon3.png"),
          title: Text(
            "History",
            style: GoogleFonts.archivo(
                color: black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon4.png"),
          title: Text(
            "Privacy policy",
            style: GoogleFonts.archivo(
                color: black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon5.png"),
          title: Text("Billing and payments"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon6.png"),
          title: Text(
            "Chat and support",
            style: GoogleFonts.archivo(
                color: black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          leading: Image.asset("assets/Images/appSettingIcon7.png"),
          title: Text(
            "About",
            style: GoogleFonts.archivo(
                color: black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    );
  }
}
