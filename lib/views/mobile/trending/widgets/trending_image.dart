import 'package:shoofi/routes/routes.dart';

trendingImage({required String imgPath}) {
  return Container(
    height: Get.height * 0.45,
    width: Get.width * 0.15,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
