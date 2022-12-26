import 'package:shoofi/routes/routes.dart';
import '../get_started/get_started_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late FlipCardController _controller;
  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
    Timer(Duration(seconds: 2), () {
      _controller.toggleCard();
    });
    Timer(Duration(seconds: 4), () {
      Get.offAll(() => GetStartedView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: FlipCard(
              controller: _controller,
              front: SvgPicture.asset(ImageConstant.logo1),
              back: SvgPicture.asset(ImageConstant.logo2))),
    );
  }
}
