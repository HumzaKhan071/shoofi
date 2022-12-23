import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoofi/Routes/routes.dart';

class MaturityScreen extends StatelessWidget {
  const MaturityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100), child: customTvAppBar()),
        body: Center(
          child: Column(children: [
            SizedBox(height: 30),
            ProfileContainer(
                containerHeight: 80,
                containerWidth: 80,
                imageHeight: 75,
                imageWidth: 75),
            SizedBox(height: 10),
            Text(
              "Shoofista",
              style: TextStyle(
                  color: black, fontWeight: FontWeight.w500, fontSize: 16),
            ),
            Container(
              height: 138,
              width: 138,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(ImageConstant.qrcode))),
            ),
            SizedBox(height: 10),
            Text(
              "ALL MATURITY RATINGS",
              style: TextStyle(
                  color: black, fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Text(
              "Show titles of all maturity ratings for this profile.",
              style: TextStyle(color: grey, fontSize: 12),
            ),
            Text(
              "Scan QR code on your registered phone to customize",
              style: TextStyle(color: grey, fontSize: 12),
            ),
          ]),
        ));
  }
}
