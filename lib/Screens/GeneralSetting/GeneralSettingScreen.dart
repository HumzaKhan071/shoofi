import 'package:shoofi/Routes/routes.dart';

class GeneralSettingScreen extends StatelessWidget {
  const GeneralSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 40,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: grey,
            )),
        centerTitle: true,
        title: Text(
          "General Settings",
          style: GoogleFonts.archivo(
              color: black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            LinearProgressIndicator(
              value: 0.0,
              backgroundColor: grey,
              valueColor: AlwaysStoppedAnimation<Color>(yellow),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(
                Icons.password,
                color: black,
              ),
              title: Text(
                "Change Password",
                style: GoogleFonts.archivo(
                    color: black, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: black,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.subscriptions,
                color: black,
              ),
              title: Text(
                "Manage Subscriptions",
                style: GoogleFonts.archivo(
                    color: black, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: black,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.supervised_user_circle_rounded,
                color: black,
              ),
              title: Text(
                "User Agreement",
                style: GoogleFonts.archivo(
                    color: black, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: black,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.delete_outline,
                color: black,
              ),
              title: Text(
                "Delete Account",
                style: GoogleFonts.archivo(
                    color: black, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
