import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/video_player/video_player_card.dart';

class VideoMainPage extends StatelessWidget {
  const VideoMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Center(
              child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/Images/epic.png"),
              Text("9.5 M Subscribers",
                  style: GoogleFonts.archivo(
                      color: grey, fontSize: 16, fontWeight: FontWeight.bold)),
              Text("769 Videos",
                  style: GoogleFonts.archivo(
                      color: grey, fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          )),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return VideoPlayerCard();
              }),
        ],
      ),
    ));
  }
}
