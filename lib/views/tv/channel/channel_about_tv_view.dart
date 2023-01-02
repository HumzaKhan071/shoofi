import 'package:shoofi/routes/routes.dart';

class ChannelAboutTvView extends StatelessWidget {
  const ChannelAboutTvView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: SizedBox(
          width: Get.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: TextStyle(
                    color: black, fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exerc",
                style: TextStyle(
                  fontSize: 22,
                  wordSpacing: 5,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Details",
                style: TextStyle(
                    color: black, fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exerc",
                style: TextStyle(
                  fontSize: 22,
                  wordSpacing: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
