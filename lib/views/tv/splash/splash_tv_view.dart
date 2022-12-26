import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/tv/get_started/get_started_tv_view.dart';

class SplashTvView extends StatefulWidget {
  const SplashTvView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashTvViewState createState() => _SplashTvViewState();
}

class _SplashTvViewState extends State<SplashTvView> {
  late FlipCardController _controller;
  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
    Timer(Duration(seconds: 2), () {
      _controller.toggleCard();
    });
    Timer(Duration(seconds: 4), () {
      Get.offAll(() => GetStartedTvView());
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
