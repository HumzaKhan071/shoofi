import 'package:shoofi/routes/routes.dart';

Positioned leftArrowBtn() {
  return Positioned(
    left: 22,
    child: Card(
      elevation: 10,
      child: Container(
          height: 35,
          width: 35,
          padding: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: grey)),
          child: Center(
              child: Icon(Icons.arrow_back_ios,
                  color: black.withOpacity(0.4), size: 25))),
    ),
  );
}
