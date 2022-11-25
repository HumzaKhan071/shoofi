import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/video_player/video_player_card.dart';

class VideoMainPage extends StatelessWidget {
  const VideoMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return VideoPlayerCard();
          }),
    );
  }
}
