import 'package:shoofi/Routes/routes.dart';


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
          style: GoogleFonts.archivo(
              color: black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: yellow,
                              backgroundImage: AssetImage(
                                "assets/Images/a.png",
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Shoofista",
                              style: GoogleFonts.archivo(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                                radius: 50,
                                backgroundColor: grey,
                                child: IconButton(
                                  onPressed: () {
                                    Get.to(() => CreateProfile());
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: yellow,
                                    size: 40,
                                  ),
                                )),
                            SizedBox(height: 5),
                            Text(
                              "Add Profile",
                              style: GoogleFonts.archivo(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                                radius: 50,
                                backgroundColor: grey,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    color: yellow,
                                    size: 40,
                                  ),
                                )),
                            SizedBox(height: 5),
                            Text(
                              "Add Profile",
                              style: GoogleFonts.archivo(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                                radius: 50,
                                backgroundColor: grey,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    color: yellow,
                                    size: 40,
                                  ),
                                )),
                            SizedBox(height: 5),
                            Text(
                              "Add Profile",
                              style: GoogleFonts.archivo(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.3),
           Agreements()
            ],
          ),
        ),
      ),
    );
  }
}
