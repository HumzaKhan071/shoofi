import 'package:shoofi/Routes/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Center(
          child: GetBuilder<SplashController>(
            init: SplashController(),
            builder: (controller) {
              return Image.asset(controller.imgPath);
            },
          ),
        ),
      ),
    );
  }
}
