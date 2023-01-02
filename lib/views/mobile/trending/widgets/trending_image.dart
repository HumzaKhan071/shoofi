import 'package:shoofi/routes/routes.dart';

Widget trendingImage({required String imgPath}) {
  return Container(
    height: 200,
    width: 150,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(16),
    ),
  );
}

Widget trendingImageForTv({required String imgPath, height, width}) {
  return Container(
    height: height ?? 300,
    width: width ?? 250,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.fill),
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
