import 'package:shoofi/routes/routes.dart';

trendingImageForTv({required String imgPath}) {
  return Container(
    height: Get.height * 0.3,
    width: Get.width * 0.1,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.fill),
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
