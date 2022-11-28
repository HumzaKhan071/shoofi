import 'package:shoofi/Routes/routes.dart';

class AllCategorySheet extends StatelessWidget {
  const AllCategorySheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white.withOpacity(0.8),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "All Categories",
              style: TextStyle(
                color: black,
                fontSize: 24,
                 fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 35),
            Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 21,
              children: [
                Text(
                  "Action",
                  style: TextStyle(color: black, fontSize: 16),
                ),
                Text(
                  "Music",
                  style: TextStyle(color: black, fontSize: 16),
                ),
                Text(
                  "Entertainment",
                  style: TextStyle(color: black, fontSize: 16),
                ),
                Text(
                  "Sports",
                  style: TextStyle(color: black, fontSize: 16),
                ),
                Text(
                  "Gaming",
                  style: TextStyle(color: black, fontSize: 16),
                ),
                Text(
                  "Comedy",
                  style: TextStyle(color: black, fontSize: 16),
                ),
                Text(
                  "Vlogs",
                  style: TextStyle(color: black, fontSize: 16),
                ),
                Text(
                  "Motivation",
                  style: TextStyle(color: black, fontSize: 16),
                ),
                Text(
                  "Relegious",
                  style: TextStyle(color: black, fontSize: 16),
                ),
                Text(
                  "Health & Fitness",
                  style: TextStyle(color: black, fontSize: 16),
                ),
                Text(
                  "Clothing",
                  style: TextStyle(color: black, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20),
            Image.asset("assets/Images/circle_cross.png")
          ],
        ),
      ),
    ));
  }
}
