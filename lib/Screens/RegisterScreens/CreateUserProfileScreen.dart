import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/Widgets/pin_dialog.dart';

class CreateUserProfileScreen extends StatefulWidget {
  const CreateUserProfileScreen({super.key});

  @override
  State<CreateUserProfileScreen> createState() =>
      _CreateUserProfileScreenState();
}

class _CreateUserProfileScreenState extends State<CreateUserProfileScreen> {
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
            color: black,
            fontSize: 14,
             fontWeight: FontWeight.w500
          ),
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
            Container(
              height: 276,
              width: 238,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileAvatar(
                        backgroundImagePath: "assets/Images/a.png",
                        title: "Shoofista",
                        onTap: () {
                          pinDialog(context);
                        },
                      ),
                      ProfileAvatar(
                        onTap: () {
                          Get.to(() => CreateProfile());
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileAvatar(
                        onTap: () {
                          Get.to(() => CreateProfile());
                        },
                      ),
                      ProfileAvatar(
                        onTap: () {
                          Get.to(() => CreateProfile());
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
