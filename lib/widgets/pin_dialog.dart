import 'package:shoofi/routes/routes.dart';

pinDialog(context, {Function(String)? onCompleted, isTv = false}) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Colors.white70,
            child: SizedBox(
              width: isTv ? 100 : null,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 15),
                  Text(
                    "Enter your pin to access",
                    style: TextStyle(
                        color: black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "this profile",
                    style: TextStyle(
                        color: black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Pinput(
                    onCompleted: onCompleted,
                    autofocus: true,
                    defaultPinTheme: PinTheme(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(),
                            color: Colors.white)),
                  ),
                  Divider(),
                  GestureDetector(
                      child: Text(
                    "Forgot PIN?",
                    style: TextStyle(
                        color: blue, fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  Divider(),
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ));
}
