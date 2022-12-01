import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/DeleteAccount/DeleteAccountScreen.dart';
import 'package:shoofi/Screens/ForgotScreens/change_password.dart';
import 'package:shoofi/Screens/ModalSheets/create_watch_list.dart';
import 'package:shoofi/Screens/Widgets/pin_dialog.dart';
import 'package:shoofi/controllers/ForgotControllers/forgot_controller.dart';

import '../../Utils/image_constant.dart';

class GeneralSettingScreen extends StatelessWidget {
  const GeneralSettingScreen({super.key});

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
                      Get.off(() => ChangePaswword());
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
              onTap: () => Get.to(() => SelectPlan(
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
              onTap: () => Get.to(() => UserAgreementScreen()),
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
                Get.off(() => DeleteAccountScreen());
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
