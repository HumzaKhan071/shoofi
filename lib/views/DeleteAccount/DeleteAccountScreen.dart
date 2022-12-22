import 'package:shoofi/Routes/routes.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(title: "Delete My Account")),
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
                Get.offAll(() => LoginView());
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
            SizedBox(
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
