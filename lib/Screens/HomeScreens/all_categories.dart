import 'package:shoofi/Routes/routes.dart';

class AllCategorySheet extends StatelessWidget {
  const AllCategorySheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white.withOpacity(0.8),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "All Categories",
              style: GoogleFonts.archivo(
                  color: black, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 35),
            Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 21,
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
            SizedBox(height: 20),
            Image.asset("assets/Images/circle_cross.png")
          ],
        ),
      ),
    ));
  }
}
