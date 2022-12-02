import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/ForgotScreens/ForgotEmail.dart';

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
        home: ChatSupportScreen());
  }
}
