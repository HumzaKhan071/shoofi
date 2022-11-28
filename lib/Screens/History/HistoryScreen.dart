import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/video_player/video_player_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 40,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: grey,
            )),
        centerTitle: true,
        title: Text(
          "History",
          style: TextStyle(
              color: black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LinearProgressIndicator(
              value: 0.0,
              backgroundColor: grey,
              valueColor: AlwaysStoppedAnimation<Color>(yellow),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return VideoPlayerCard();
                }),
          ],
        ),
      ),
    );
  }
}
