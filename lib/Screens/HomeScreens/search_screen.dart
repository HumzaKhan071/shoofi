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
              suffixIcon: IconButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    height: Get.height * 0.35,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Image.asset("assets/Images/divider.png"),
                        SizedBox(height: 20),
                        Text("Filters",
                            style: GoogleFonts.archivo(
                                color: black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 15),
                        Divider(
                          thickness: 1,
                          indent: 15,
                          endIndent: 15,
                        ),
                        
                      ],
                    ),
                  ));
                },
                icon: Icon(
                  Icons.filter_list_alt,
                  color: Colors.grey,
                ),
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
