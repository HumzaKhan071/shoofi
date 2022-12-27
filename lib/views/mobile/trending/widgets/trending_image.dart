import 'package:shoofi/routes/routes.dart';

Widget trendingImage({required String imgPath, double? height, double? width}) {
  return Container(
    height: height ?? Get.height * 0.45,
    width: width ?? Get.width * 0.15,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
