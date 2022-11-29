import 'package:shoofi/Routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: "Archivo",
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}
