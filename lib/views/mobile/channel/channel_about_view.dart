import 'package:shoofi/routes/routes.dart';

class ChannelAbout extends StatelessWidget {
  const ChannelAbout({super.key});

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
              Image.asset(ImageConstant.epic),
              Text("9.5 M Subscribers",
                  style: TextStyle(
                      color: grey, fontSize: 16, fontWeight: FontWeight.bold)),
              Text("769 Videos",
                  style: TextStyle(
                      color: grey, fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          )),
          SizedBox(height: 20),
          Text(
            "Description",
            style: TextStyle(
                color: black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed semper nunc. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl.",
            style: TextStyle(
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.5),
          ),
          SizedBox(height: 20),
          Text(
            "Details",
            style: TextStyle(
                color: black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed semper nunc. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl.",
            style: TextStyle(
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.5),
          ),
        ],
      ),
    );
  }
}
