import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Utils/image_constant.dart';

class GetStarted2Controller extends GetxController {
  List<Widget> listCustomTabs = [];

  getSlides() {
    for (var i = 0; i < 3; i++) {
      listCustomTabs.add(
        Column(
          children: [
            SvgPicture.asset(ImageConstant.illustration),
            SizedBox(height: Get.height * 0.08),
            Text.rich(TextSpan(
                text: "Avail The Most Out of Our ",
                style: TextStyle(
                  fontSize: 12,
                   fontWeight: FontWeight.bold
                ),
                children: [
                  TextSpan(
                    text: "All-In-One",
                    style: TextStyle(
                      fontSize: 12,
                      color: yellow,
                       fontWeight: FontWeight.bold
                    ),
                  )
                ])),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Platform Designed",
              style: TextStyle(
                fontSize: 12,
                color: yellow,
                 fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      );
    }
    return listCustomTabs;
  }
}
