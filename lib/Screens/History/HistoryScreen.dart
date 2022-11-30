import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/video_player/video_player_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          title: "History",
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
