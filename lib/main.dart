import 'Routes/routes.dart';
import 'views/splash/splash_view.dart';

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
        home: SplashView());
  }
}
