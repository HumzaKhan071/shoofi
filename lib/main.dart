import 'package:shoofi/Screens/Billing%20and%20payments/BillingPaymentScreen.dart';
import 'package:shoofi/Screens/Chat%20and%20Support/ChatSupportScreen.dart';
import 'package:shoofi/Screens/DeleteAccount/DeleteAccountScreen.dart';
import 'package:shoofi/Screens/UpgradedComplete/UpgradedCompleteScreen.dart';

import 'Routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home: ChatSupportScreen(),

    );
  }
}
