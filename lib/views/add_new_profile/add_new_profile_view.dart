import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/create_user_profile/create_user_profile_view.dart';
import 'package:shoofi/views/home/bottom_navigation_bar.dart';

class AddNewProfileView extends StatefulWidget {
  const AddNewProfileView({super.key});

  @override
  State<AddNewProfileView> createState() => _AddNewProfileViewState();
}

class _AddNewProfileViewState extends State<AddNewProfileView> {
  bool valueBox1 = false;
  bool valueBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 40,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: grey,
            )),
        centerTitle: true,
        title: Text(
          "Who is watching?",
          style: TextStyle(
              color: black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            LinearProgressIndicator(
              value: 0.1,
              backgroundColor: grey,
              valueColor: AlwaysStoppedAnimation<Color>(yellow),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 276,
              width: 238,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileAvatar(
                        backgroundImagePath: ImageConstant.a,
                        title: "Shoofista",
                        onTap: () {
                          pinDialog(
                            context,
                            onCompleted: (pin) {
                              Get.offAll(() => HomeBottomNavigationBar());
                            },
                          );
                        },
                      ),
                      ProfileAvatar(
                        onTap: () {
                          Get.to(() => CreateUserProfileView());
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileAvatar(
                        onTap: () {
                          Get.to(() => CreateUserProfileView());
                        },
                      ),
                      ProfileAvatar(
                        onTap: () {
                          Get.to(() => CreateUserProfileView());
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Agreements(), SizedBox(height: 20)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
