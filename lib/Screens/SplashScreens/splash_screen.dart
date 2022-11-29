import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoofi/Routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late FlipCardController _controller;
  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
    Timer(Duration(seconds: 2), () {
      _controller.toggleCard();
    });
    Timer(Duration(seconds: 4), () {
      Get.offAll(GetStarted());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: FlipCard(
              controller: _controller,
              front: SvgPicture.asset("assets/SvgPictures/logo1.svg"),
              back: SvgPicture.asset("assets/SvgPictures/logo2.svg"))),
    );
  }
}
