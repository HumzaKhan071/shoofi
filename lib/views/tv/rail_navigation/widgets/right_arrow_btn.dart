 import 'package:shoofi/routes/routes.dart';

Positioned rightArrowBtn() {
    return Positioned(
        right: 22,
        child: Card(
          elevation: 10,
          child: Container(
              height: 40,
              width: 30,
              padding: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: grey)),
              child: Center(
                  child:
                      Icon(Icons.arrow_forward_ios, color: grey, size: 25))),
        ),
      );
  }