import 'package:shoofi/Routes/routes.dart';

class SplashController extends GetxController {
  String imgPath = "assets/Images/logo1.png";

  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 2), (() {
      updateImage();
    }));
    Timer(Duration(seconds: 4), (() {
      Get.offAll(() => const GetStarted());
    }));
  }

  updateImage() {
    imgPath = "assets/Images/logo2.png";
    update();
  }
}
