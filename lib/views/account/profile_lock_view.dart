import 'package:shoofi/routes/routes.dart';

class ProfileLockView extends StatelessWidget {
  const ProfileLockView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: yellow,
                      radius: 55,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          "assets/images/a.png",
                        ),
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      "Shoofista",
                      style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              CustomTextField(text: "User Name"),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("Create Pin",
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )),
              ),
              PasswordTextField(text: "***"),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("Confirm Pin",
                    style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              PasswordTextField(
                text: "***",
              ),
              SizedBox(height: Get.height * 0.1),
              Center(
                  child: MyButtonContainer(
                text: "Confirm",
                conColor: yellow,
                press: () {
                  Get.back();
                },
              )),
              SizedBox(
                height: 10,
              ),
              Center(child: Agreements())
            ],
          ),
        ),
      ),
    );
  }
}
