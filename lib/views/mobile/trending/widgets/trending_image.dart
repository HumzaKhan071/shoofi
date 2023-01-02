import 'package:shoofi/routes/routes.dart';

Widget trendingImage({required String imgPath}) {
  return Container(
    height: 200,
    width: 150,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.fill),
      borderRadius: BorderRadius.circular(16),
    ),
  );
}

Widget trendingImageForTv({required String imgPath}) {
  return Container(
    height: 300,
    width: 250,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.fill),
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
