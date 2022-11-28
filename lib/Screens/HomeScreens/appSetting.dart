import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/Billing%20and%20payments/BillingPaymentScreen.dart';
import 'package:shoofi/Screens/GeneralSetting/GeneralSettingScreen.dart';
import 'package:shoofi/Screens/History/HistoryScreen.dart';
import 'package:shoofi/Screens/VideoQualityPreferences/VideoQualityPreference.dart';
import 'package:shoofi/Screens/Widgets/customAppBar.dart';

class AppSetting extends StatelessWidget {
  const AppSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          title: "App Settings",
        ),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            backgroundColor: grey,
            value: 0,
            valueColor: AlwaysStoppedAnimation<Color>(yellow),
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
