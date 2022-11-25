import 'package:shoofi/Routes/routes.dart';

allCategoriesSheet() {
  return Get.bottomSheet(
      Container(
        color: Colors.white.withOpacity(0.8),
        child: Column(
          children: [
            SizedBox(height: 35),
            Text(
              "All Categories",
              style: GoogleFonts.archivo(
                  color: black, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 40,
              children: [
                Text(
                  "Action",
                  style: GoogleFonts.archivo(color: black, fontSize: 16),
                ),
                Text(
                  "Music",
                  style: GoogleFonts.archivo(color: black, fontSize: 16),
                ),
                Text(
                  "Entertainment",
                  style: GoogleFonts.archivo(color: black, fontSize: 16),
                ),
                Text(
                  "Sports",
                  style: GoogleFonts.archivo(color: black, fontSize: 16),
                ),
                Text(
                  "Gaming",
                  style: GoogleFonts.archivo(color: black, fontSize: 16),
                ),
                Text(
                  "Comedy",
                  style: GoogleFonts.archivo(color: black, fontSize: 16),
                ),
                Text(
                  "Vlogs",
                  style: GoogleFonts.archivo(color: black, fontSize: 16),
                ),
                Text(
                  "Motivation",
                  style: GoogleFonts.archivo(color: black, fontSize: 16),
                ),
                Text(
                  "Relegious",
                  style: GoogleFonts.archivo(color: black, fontSize: 16),
                ),
                Text(
                  "Health & Fitness",
                  style: GoogleFonts.archivo(color: black, fontSize: 16),
                ),
                Text(
                  "Clothing",
                  style: GoogleFonts.archivo(color: black, fontSize: 16),
                ),
              ],
            ),
            InkWell(
                onTap: () {
                  Get.back();
                },
                child: Image.asset("assets/Images/circle_cross.png"))
          ],
        ),
      ),
      isScrollControlled: true);
}
