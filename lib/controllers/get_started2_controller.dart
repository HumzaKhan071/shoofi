import 'package:shoofi/Routes/routes.dart';

class GetStarted2Controller extends GetxController {
  List<Widget> listCustomTabs = [];

  getSlides() {
    for (var i = 0; i < 3; i++) {
      listCustomTabs.add(
        Column(
          children: [
            Image.asset("assets/Images/illustration1.png"),
            SizedBox(height: Get.height * 0.08),
            Text.rich(TextSpan(
                text: "Avail The Most Out of Our ",
                style: GoogleFonts.archivo(
                    fontSize: 12, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: "All-In-One",
                    style: GoogleFonts.archivo(
                        fontSize: 12,
                        color: yellow,
                        fontWeight: FontWeight.bold),
                  )
                ])),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Platform Designed",
              style: GoogleFonts.archivo(
                  fontSize: 12, color: yellow, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
    }
    return listCustomTabs;
  }
}
