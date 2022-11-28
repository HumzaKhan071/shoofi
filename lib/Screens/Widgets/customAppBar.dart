import 'package:shoofi/Routes/routes.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        title,
        style:
            TextStyle(color: black, fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }
}
