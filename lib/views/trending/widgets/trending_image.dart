import 'package:shoofi/Routes/routes.dart';

trendingImage({required String imgPath}) {
  return Container(
    height: Get.height * 0.18,
    width: Get.width * 0.3,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(16),
    ),
  );
}