import 'package:shoofi/Routes/routes.dart';

class ForgotEmail extends StatelessWidget {
  const ForgotEmail({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
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
          "Forgot Password",
          style: GoogleFonts.archivo(
              color: black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinearProgressIndicator(
                value: 0.1,
                backgroundColor: grey,
                valueColor: AlwaysStoppedAnimation<Color>(yellow),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 40,
                width: 322,
                child: Column(
                  children: [
                    Text(
                      "Please enter your email address or mobile number",
                      style: GoogleFonts.archivo(
                        fontSize: 14,
                        color: black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "to search for your account.",
                      style: GoogleFonts.archivo(
                        fontSize: 14,
                        color: black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 192,
                width: 154,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/Images/Forgot Password Illustration.png"))),
              ),
              SizedBox(height: 20),
              Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: grey, width: 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email or phone",
                    hintStyle: GoogleFonts.archivo(
                        color: grey, fontSize: 16, fontWeight: FontWeight.bold),
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              MyButtonContainer(
                text: "Search",
                conColor: yellow,
                press: () {
                  Get.to(() => CompletedScreen());
                },
              ),
              SizedBox(height: 10),
              MyButtonContainer(
                text: "Cancel",
                conColor: grey,
                press: () {
                  Get.to(() => CompletedScreen());
                },
              ),
              SizedBox(height: Get.height * 0.1),
            Agreements()
            ],
          ),
        ),
      ),
    );
  }
}
