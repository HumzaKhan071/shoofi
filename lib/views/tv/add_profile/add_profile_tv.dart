import 'package:shoofi/Routes/routes.dart';

class AddProfileTvView extends StatelessWidget {
  const AddProfileTvView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              color: black,
              height: Get.height * 0.28,
              child: Center(child: Image.asset(ImageConstant.logo4)),
            ),
          ),
          SizedBox(
            height: Get.height * 0.1,
          ),
          Container(
            height: 263,
            width: 263,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(ImageConstant.qrcode))),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Scan QR code on your registered device",
            style: TextStyle(
                color: grey, fontSize: 28, fontWeight: FontWeight.w200),
          ),
          SizedBox(height: 10),
          Text(
            "to add a profile",
            style: TextStyle(
                color: grey, fontSize: 28, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height);
    path.quadraticBezierTo(width / 2, height - 50, width, height);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}