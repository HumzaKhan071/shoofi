import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/GetStartedScreens/get_started_desktop.dart';
import 'package:shoofi/Screens/RegisterScreens/tv/create_user_profile_tv.dart';
import 'package:shoofi/Screens/RegisterScreens/tv/location_tv.dart';

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
        home: GetStartedDesktop());
  }
}
