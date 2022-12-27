import 'package:shoofi/routes/routes.dart';

class RecommendedVideoContainer extends StatelessWidget {
  const RecommendedVideoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.trailerPic))),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Vivamus mattis sapien vel eros cursus, a venen Vivamus mattis sapien vel eros cursus, a venen ...",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Vivamus mattis sapien vel eros cursus,a venen ...",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "1,234,567 views",
                        style: TextStyle(fontSize: 12, color: grey),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "|",
                        style: TextStyle(fontSize: 12, color: grey),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "September 1, 2020",
                        style: TextStyle(fontSize: 12, color: grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna",
                    style: TextStyle(color: grey, fontSize: 15),
                  ),
                  Text(
                    "aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo   ",
                    style: TextStyle(color: grey, fontSize: 15),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore",
                    style: TextStyle(color: grey, fontSize: 15),
                  ),
                  Text(
                    "magna aliqua. Ut enim ad minim veniam, quis nostrud exerc",
                    style: TextStyle(color: grey, fontSize: 15),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 150),
            child: Row(
              children: [
                SvgPicture.asset(
                  ImageConstant.watchlater,
                  color: grey,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.more_horiz,
                  color: grey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
