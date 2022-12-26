import 'package:shoofi/routes/routes.dart';

class ChannelHomePage extends StatelessWidget {
  const ChannelHomePage({super.key});

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
              Image.asset(ImageConstant.epic),
              Text("9.5 M Subscribers",
                  style: TextStyle(
                      color: grey, fontSize: 16, fontWeight: FontWeight.bold)),
              Text("769 Videos",
                  style: TextStyle(
                      color: grey, fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          )),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return VideoThumbnailWithInfo();
              }),
        ],
      ),
    ));
  }
}
