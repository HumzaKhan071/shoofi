import 'package:shoofi/Routes/routes.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
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
          "Sign Up",
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
                height: 20,
              ),
              Center(
                child: Text("Check your email",
                    style: GoogleFonts.archivo(color: black, fontSize: 24)),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 47,
                width: 225,
                child: Column(
                  children: [
                    Text(
                      "We’ve sent the code to the email",
                      style: GoogleFonts.archivo(color: black, fontSize: 14),
                    ),
                    Text(
                      "on your device",
                      style: GoogleFonts.archivo(color: black, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/Images/Varification_illustration.png"),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyTextFieldContainer(),
                  MyTextFieldContainer(),
                  MyTextFieldContainer(),
                  MyTextFieldContainer(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text.rich(TextSpan(
                  text: "Code expires in ",
                  style: GoogleFonts.archivo(color: black, fontSize: 12),
                  children: [
                    TextSpan(
                      text: "00:59",
                      style: GoogleFonts.archivo(color: red, fontSize: 12),
                    ),
                  ])),
              SizedBox(
                height: 10,
              ),
              Text.rich(TextSpan(
                  text: "Didn’t receive code? ",
                  style: GoogleFonts.archivo(color: black, fontSize: 12),
                  children: [
                    TextSpan(
                      text: " Resend Code",
                      style: GoogleFonts.archivo(color: red, fontSize: 12),
                    ),
                  ])),
              SizedBox(
                height: Get.height * 0.2,
              ),
              MyButtonContainer(
                text: "Verify",
                conColor: yellow,
                press: () {
                  Get.to(() => RegisterScreenLocation());
                },
              ),
              const SizedBox(
                height: 10,
              ),
             Agreements()
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextFieldContainer extends StatelessWidget {
  const MyTextFieldContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController numberController = TextEditingController();
    return Container(
      height: 47,
      width: 50,
      color: grey,
      child: TextField(
        controller: numberController,
        keyboardType: TextInputType.number,
        cursorColor: black,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: "-",
          hintStyle: GoogleFonts.archivo(
              color: grey, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
