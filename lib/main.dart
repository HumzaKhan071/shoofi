import 'package:responsive_builder/responsive_builder.dart';
import 'package:shoofi/views/mobile/splash/splash_view.dart';
import 'package:shoofi/views/tv/rail_navigation/rail_navigation.dart';
import 'package:shoofi/views/tv/splash/splash_tv_view.dart';
import 'package:shoofi/views/tv/video_player/video_player_tv_view.dart';

import 'routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: "Archivo",
      ),
      debugShowCheckedModeBanner: false,
      // home: ResponsiveBuilder(
      //   builder: (context, sizingInformation) {
      //     if (sizingInformation.deviceScreenType ==
      //         DeviceScreenType.desktop) {
      //       return SplashTvView();
      //     }
      //     if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
      //       return SplashTvView();
      //     }
      //     if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
      //       return SplashTvView();
      //     }
      //     return Center(
      //       child: Text("No Size"),
      //     );
      //   },
      // ));
      home: responsive(),
    );
  }
}

responsive() {
  
  if (Get.height >= 1080 &&
      Get.width >= 1920) {
    return SplashTvView();
  } else if (Get.height >= 720 &&
      Get.width >= 1280) {
    return SplashTvView();
  } else if (Get.height >= 640 &&
      Get.width >= 360) {
    return SplashView();
  } else {
    return SplashView();
  }
}
