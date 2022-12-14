import 'package:shoofi/Routes/routes.dart';

class SplashController extends GetxController {
  String imgPath = "assets/SvgPictures/logo1.svg";

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
    imgPath = "assets/SvgPictures/logo2.svg";
    update();
  }
}
