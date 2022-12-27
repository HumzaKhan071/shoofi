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
        home: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType ==
                DeviceScreenType.desktop) {
              return VideoPlayerTvView();
            }
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return SplashView();
            }
            return Center(
              child: Text("No Size"),
            );
          },
        ));
  }
}
