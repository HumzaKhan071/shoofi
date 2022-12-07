import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/Billing%20and%20payments/BillingPaymentScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          fontFamily: "Archivo",
        ),
        debugShowCheckedModeBanner: false,
        home: SafeArea(child: SplashScreen()));
  }
}
