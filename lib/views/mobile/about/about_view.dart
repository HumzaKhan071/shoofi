import 'package:shoofi/routes/routes.dart';

class AboutView extends StatelessWidget {
  final String title;
  final String description;
  const AboutView({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          title: title,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            LinearProgressIndicator(
              value: 0,
              backgroundColor: grey,
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 594,
              width: 315,
              child: Center(
                  child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14, color: black, wordSpacing: 5, height: 1.1),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
