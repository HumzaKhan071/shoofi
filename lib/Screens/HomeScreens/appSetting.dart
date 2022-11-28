import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/Billing%20and%20payments/BillingPaymentScreen.dart';
import 'package:shoofi/Screens/GeneralSetting/GeneralSettingScreen.dart';
import 'package:shoofi/Screens/History/HistoryScreen.dart';
import 'package:shoofi/Screens/VideoQualityPreferences/VideoQualityPreference.dart';

class AppSetting extends StatelessWidget {
  const AppSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          ListTile(
              leading: Icon(Icons.arrow_back_ios_new_rounded),
              title: Center(
                  child: Text(
                "App Settings",
                style: TextStyle(
                  color: black,
                  fontSize: 16,
                   fontWeight: FontWeight.bold
                ),
              ))),
          Divider(
            indent: 10,
            endIndent: 10,
            thickness: 1,
            color: grey,
          ),
          ListTile(
            leading: Image.asset("assets/Images/appSettingIcon1.png"),
            onTap: () {
              Get.to(GeneralSettingScreen());
            },
            title: Text(
              "General",
              style: TextStyle(
                color: black,
                fontSize: 16,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            leading: Image.asset("assets/Images/appSettingIcon2.png"),
            onTap: () {
              Get.to(VideoQualityPreference());
            },
            title: Text(
              "Video quality preferences",
              style: TextStyle(
                color: black,
                fontSize: 16,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            leading: Image.asset("assets/Images/appSettingIcon3.png"),
            onTap: () {
              Get.to(HistoryScreen());
            },
            title: Text(
              "History",
              style: TextStyle(
                color: black,
                fontSize: 16,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            leading: Image.asset("assets/Images/appSettingIcon4.png"),
            onTap: () {
              Get.to(PrivacyScreen());
            },
            title: Text(
              "Privacy policy",
              style: TextStyle(
                color: black,
                fontSize: 16,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Get.to(BillingPaymentScreen());
            },
            leading: Image.asset("assets/Images/appSettingIcon5.png"),
            title: Text("Billing and payments"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Get.to(ChatSupportScreen());
            },
            leading: Image.asset("assets/Images/appSettingIcon6.png"),
            title: Text(
              "Chat and support",
              style: TextStyle(
                color: black,
                fontSize: 16,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Get.to(UserAgreementScreen());
            },
            leading: Image.asset("assets/Images/appSettingIcon7.png"),
            title: Text(
              "About",
              style: TextStyle(
                color: black,
                fontSize: 16,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
    );
  }
}
