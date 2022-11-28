import 'package:shoofi/Routes/routes.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          "Delete my Account",
          style: TextStyle(color: black, fontSize: 14, fontWeight: FontWeight.w500,  ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            LinearProgressIndicator(
              value: 0.0,
              backgroundColor: grey,
              valueColor: AlwaysStoppedAnimation<Color>(yellow),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 31,
              width: 293,
              child: Text(
                "Are you Sure you want to delete your account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.4),
            MyButtonContainer(
              text: "Delete",
              conColor: deleteBtn,
              textColor: Colors.white,
            ),
            SizedBox(height: 10),
            Agreements()
          ],
        ),
      ),
    );
  }
}
