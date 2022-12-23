import 'package:shoofi/Routes/routes.dart';

class CreateUserProfileTv extends StatefulWidget {
  const CreateUserProfileTv({super.key});

  @override
  State<CreateUserProfileTv> createState() => _CreateUserProfileTvState();
}

class _CreateUserProfileTvState extends State<CreateUserProfileTv> {
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
              child: Column(
                children: [
                  Row(
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
                  Center(child: Image.asset(ImageConstant.logo4)),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => ProfileAvatar(
                        backgroundImagePath: ImageConstant.a,
                        title: "Shoofista",
                        isEditShow: press.value,
                        onTap: () {
                          pinDialog(
                            context,
                            onCompleted: (pin) {
                              Get.offAll(() => HomeBottomNavigationBar());
                            },
                          );
                        },
                      ),
                    ),
                    Obx(
                      () => ProfileAvatar(
                        isEditShow: press.value,
                        onTap: () {
                          Get.to(() => CreateProfile());
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
                      () => ProfileAvatar(
                        isEditShow: press.value,
                        onTap: () {
                          Get.to(() => CreateProfile());
                        },
                      ),
                    ),
                    Obx(
                      () => ProfileAvatar(
                        isEditShow: press.value,
                        onTap: () {
                          Get.to(() => CreateProfile());
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
