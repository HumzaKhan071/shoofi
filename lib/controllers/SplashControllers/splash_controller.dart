import 'package:shoofi/Routes/routes.dart';

class SplashController extends GetxController {
  String imgPath = "assets/Images/logo1.png";

  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 3), (() {
      updateImage();
      Timer(Duration(seconds: 3), (() {
        Get.offAll(() => const GetStarted());
      }));
    }));
  }

  updateImage() {
    imgPath = "assets/Images/logo2.png";
    update();
  }
}
