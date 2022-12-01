import 'package:shoofi/Routes/routes.dart';

class MyWatchlistTIle extends StatelessWidget {
  final String title;
  const MyWatchlistTIle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "assets/images/img2.png",
        height: 20,
      ),
      minLeadingWidth: 5,
      title: Text(
        title,
        style: TextStyle(
          color: black,
          fontSize: 14,
        ),
      ),
    );
  }
}
