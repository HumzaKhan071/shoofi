import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoofi/Routes/routes.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Center(
              child: Column(
            children: [
              Image.asset("assets/Images/epic.png"),
              Text("9.5 M Subscribers",
                  style: GoogleFonts.archivo(
                      color: grey, fontSize: 16, fontWeight: FontWeight.bold)),
              Text("769 Videos",
                  style: GoogleFonts.archivo(
                      color: grey, fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          )),
          SizedBox(height: 20),
          Text(
            "Description",
            style: GoogleFonts.archivo(
                color: black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed semper nunc. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl.",
            style: GoogleFonts.archivo(
                color: black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          Text(
            "Details",
            style: GoogleFonts.archivo(
                color: black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed semper nunc. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl.",
            style: GoogleFonts.archivo(
                color: black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
