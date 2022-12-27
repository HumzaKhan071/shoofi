import 'package:shoofi/routes/routes.dart';

Positioned rightArrowBtn() {
  return Positioned(
    right: 12,
    child: Card(
      elevation: 10,
      child: Container(
          height: 35,
          width: 35,
          padding: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: grey)),
          child: Center(
              child: Icon(Icons.arrow_forward_ios,
                  color: black.withOpacity(0.4), size: 25))),
    ),
  );
}
