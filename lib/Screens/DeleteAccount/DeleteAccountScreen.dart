import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/LoginScreens/login_screen.dart';

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
          style: TextStyle(
            color: black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
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
            SizedBox(height: Get.height * 0.2),
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
            SizedBox(
              height: 20,
            ),
            MyButtonContainer(
              text: "Delete",
              conColor: deleteBtn,
              textColor: Colors.white,
              press: () {
                Get.offAll(() => LoginScreen());
              },
            ),
            SizedBox(height: 10),
            Agreements(),
            SizedBox(height: 60),
            SizedBox(
              height: 71,
              width: 293,
              child: Text(
                textAlign: TextAlign.center,
                "Your account will be deleted within 15days you can login with same credentials winthin the time duration of your account removal before its permanently deleted",
                style: TextStyle(
                  color: black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
                height: 14,
                width: 118,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      textAlign: TextAlign.center,
                      "Give your feedback!",
                      style: TextStyle(
                        color: blue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
