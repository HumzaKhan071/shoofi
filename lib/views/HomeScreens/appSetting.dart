
import 'package:shoofi/Routes/routes.dart';



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
            minLeadingWidth: 0,
            leading: Image.asset(ImageConstant.appSettingicon1),
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
            minLeadingWidth: 0,
            leading: Image.asset(ImageConstant.appSettingicon2),
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
            minLeadingWidth: 0,
            leading: Image.asset(ImageConstant.appSettingicon3),
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
            minLeadingWidth: 0,
            leading: Image.asset(ImageConstant.appSettingicon4),
            onTap: () {
              Get.to(() => UserAgreementScreen(title: "Privacy Policy"));
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
            minLeadingWidth: 0,
            onTap: () {
              Get.to(BillingPaymentScreen());
            },
            leading: Image.asset(ImageConstant.appSettingicon5),
            title: Text("Billing and payments"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            minLeadingWidth: 0,
            onTap: () {
              Get.to(ChatSupportScreen());
            },
            leading: Image.asset(ImageConstant.appSettingicon6),
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
            minLeadingWidth: 0,
            onTap: () {
              Get.to(UserAgreementScreen(title: "User Agreement"));
            },
            leading: Image.asset(ImageConstant.appSettingicon7),
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
