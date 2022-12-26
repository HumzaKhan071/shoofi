  import 'package:shoofi/routes/routes.dart';

Positioned leftArrowBtn() {
    return Positioned(
        left: 22,
        child: Card(
          elevation: 10,
          child: Container(
              height: 40,
              width: 30,
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: grey)),
              child: Center(
                  child: Icon(Icons.arrow_back_ios, color: grey, size: 25))),
        ),
      );
  }
