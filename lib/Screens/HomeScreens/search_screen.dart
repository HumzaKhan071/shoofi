import 'package:shoofi/Routes/routes.dart';

class HomeSearchScreen extends StatelessWidget {
  const HomeSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: MyTextField(
              text: "Search or Paste URL",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffix: Text(
                "|",
                style: TextStyle(color: Colors.red),
              ),
              suffixIcon: Icon(
                Icons.filter_list_alt,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 15),
          Flexible(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Wrap(
                  spacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    VideoThumbnail(imgPath: "assets/Images/img1.png"),
                    VideoThumbnail(imgPath: "assets/Images/img2.png"),
                    VideoThumbnail(imgPath: "assets/Images/img3.png"),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
