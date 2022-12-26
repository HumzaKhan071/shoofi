import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/tv/add_profile/add_profile_tv.dart';
import 'package:shoofi/views/tv/profile/widgets/profile_avatar_tv.dart';
import 'package:shoofi/views/tv/rail_navigation/rail_navigation.dart';

class ProfileTvView extends StatefulWidget {
  const ProfileTvView({super.key});

  @override
  State<ProfileTvView> createState() => _ProfileTvViewState();
}

class _ProfileTvViewState extends State<ProfileTvView> {
  RxBool press = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              color: black,
              height: Get.height * 0.28,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                      child: Center(child: Image.asset(ImageConstant.logo4))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            )),
                        TextButton(
                            onPressed: () {
                              press.value = !(press.value);
                            },
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 238,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => ProfileAvatarTv(
                        backgroundImagePath: ImageConstant.a,
                        title: "Shoofista",
                        isEditShow: press.value,
                        onTap: () {
                          pinDialog(
                            context,
                            isTv: true,
                            onCompleted: (pin) {
                              Get.offAll(() => RailNavigation());
                            },
                          );
                        },
                      ),
                    ),
                    Obx(
                      () => ProfileAvatarTv(
                        isEditShow: press.value,
                        onTap: () {
                          Get.to(() => AddProfileTvView());
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => ProfileAvatarTv(
                        isEditShow: press.value,
                        onTap: () {
                          Get.to(() => AddProfileTvView());
                        },
                      ),
                    ),
                    Obx(
                      () => ProfileAvatarTv(
                        isEditShow: press.value,
                        onTap: () {
                          Get.to(() => AddProfileTvView());
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height);
    path.quadraticBezierTo(width / 2, height - 50, width, height);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
