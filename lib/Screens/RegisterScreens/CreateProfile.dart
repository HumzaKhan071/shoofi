import 'package:shoofi/Routes/routes.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({super.key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  bool isSwitched = true;
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
            color: black,
            fontSize: 14,
             fontWeight: FontWeight.w500
          ),
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
                    Image.asset("assets/Images/circle.png"),
                    SizedBox(height: 5),
                    Text("Click to select avatar or upload picture",
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                           fontWeight: FontWeight.w500
                        )),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("For Kids",
                      style: TextStyle(
                        color: black,
                        fontSize: 14,
                         fontWeight: FontWeight.w500
                      )),
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
                    color: black,
                    fontSize: 14,
                     fontWeight: FontWeight.bold
                  ),
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
                  "Platforms",
                  style: TextStyle(
                    color: black,
                    fontSize: 14,
                     fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 5),
                LinearProgressIndicator(
                  value: 0.0,
                  backgroundColor: grey,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    child: MyRow(
                        image: "assets/Images/block.png",
                        title: "Sensitive Content")),
              ],
              SizedBox(height: 20),
              MyButtonContainer(
                text: "Continue",
                conColor: yellow,
                press: () {
                  Get.to(() => CompletedScreen());
                },
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
