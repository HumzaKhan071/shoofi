import 'package:shoofi/Routes/routes.dart';



class CreateProfile extends StatefulWidget {
  const CreateProfile({super.key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  bool isSwitched = true;
  RegistrationController controller = Get.put(RegistrationController());
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
          "Create Profile",
          style: TextStyle(
              color: black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearProgressIndicator(
                value: 0.1,
                backgroundColor: grey,
                valueColor: AlwaysStoppedAnimation<Color>(yellow),
              ),
              SizedBox(height: 10),
              Center(
                child: Column(
                  children: [
                    GetBuilder<RegistrationController>(builder: (context) {
                      return controller.imageFile == null
                          ? InkWell(
                              onTap: () {
                                controller.getFromGallery();
                              },
                              child: Image.asset(ImageConstant.circle))
                          : InkWell(
                              onTap: () {
                                controller.getFromGallery();
                              },
                              child: CircleAvatar(
                                radius: 80,
                                backgroundImage: FileImage(
                                  controller.imageFile!,
                                ),
                              ),
                            );
                    }),
                    SizedBox(height: 10),
                    Text("Select Your Avatar",
                        style: TextStyle(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: MyTextField(text: "Username"),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("For Kids",
                      style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  Switch(
                      activeColor: Colors.green,
                      inactiveThumbColor: grey,
                      inactiveTrackColor: grey,
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      }),
                ],
              ),
              SizedBox(height: 10),
              if (isSwitched == true) ...[
                Text(
                  "Platforms",
                  style: TextStyle(
                      color: black, fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                LinearProgressIndicator(
                  value: 0.0,
                  backgroundColor: grey,
                  valueColor: AlwaysStoppedAnimation<Color>(yellow),
                ),
                SizedBox(height: 5),
                MyPlatformContainer(),
                SizedBox(height: 10),
                Text(
                  "Content",
                  style: TextStyle(
                      color: black, fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                LinearProgressIndicator(
                  value: 0.0,
                  backgroundColor: grey,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    child: MyRow(
                        image: ImageConstant.block,
                        title: "Sensitive Content")),
              ],
              SizedBox(height: 20),
              Center(
                child: MyButtonContainer(
                  text: "Continue",
                  conColor: yellow,
                  press: () {
                    Get.to(
                        () => CompletedScreen(fromManageSubscription: false));
                  },
                ),
              ),
              SizedBox(height: 10),
              Center(
                  child: Column(
                children: [Agreements()],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
