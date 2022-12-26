import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/utils/about.dart';
import '../general_setting/change_password_view.dart';
import '../select_plan/select_plan_view.dart.dart';

class GeneralSettingSView extends StatelessWidget {
  const GeneralSettingSView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          title: "General Settings",
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
              onTap: (() => pinDialog(
                    context,
                    onCompleted: (p0) {
                      Get.off(() => ChangePaswwordView());
                    },
                  )),
              minLeadingWidth: 0,
              leading: Icon(
                Icons.password,
                color: black,
              ),
              title: Text(
                "Change Password",
                style: TextStyle(
                  color: black,
                  fontSize: 14,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: black,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              onTap: () => Get.to(() => SelectPlanView(
                    appBarTitle: "Upgrade Subscription Plan",
                  )),
              minLeadingWidth: 0,
              leading: SvgPicture.asset(
                ImageConstant.myAccountCards,
                color: black,
              ),
              title: Text(
                "Manage Subscriptions",
                style: TextStyle(
                  color: black,
                  fontSize: 14,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: black,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              onTap: () => Get.to(() => AboutView(
                  title: "User Agreement", description: userAgreement)),
              minLeadingWidth: 0,
              leading: SvgPicture.asset(
                ImageConstant.myAccountAgreements,
                color: black,
              ),
              title: Text(
                "User Agreement",
                style: TextStyle(
                  color: black,
                  fontSize: 14,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: black,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              onTap: () => pinDialog(context, onCompleted: ((pin) {
                Get.off(() => DeleteAccountView());
              })),
              minLeadingWidth: 0,
              leading: Icon(
                Icons.delete_outline,
                color: black,
              ),
              title: Text(
                "Delete Account",
                style: TextStyle(
                  color: black,
                  fontSize: 14,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
