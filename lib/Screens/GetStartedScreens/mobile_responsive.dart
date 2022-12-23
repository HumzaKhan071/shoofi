import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/GetStartedScreens/get_started_desktop.dart';

class MobileResponsive extends StatelessWidget {
  const MobileResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
    breakpoints: ScreenBreakpoints(desktop: 1080, tablet: 1000, watch: 300),
      builder: (context, sizingInformation) {
        
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return GetStartedDesktop();
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return GetStarted();
        }
        return const Center(
          child: Text("data"),
        );
      },
    );
  }
}
