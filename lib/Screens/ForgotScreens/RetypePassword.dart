import 'package:shoofi/Routes/routes.dart';

class RetypePassword extends StatelessWidget {
  const RetypePassword({super.key});

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
          "Forgot Password",
          style: GoogleFonts.archivo(
              color: black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              LinearProgressIndicator(
                value: 0.9,
                backgroundColor: grey,
                valueColor: AlwaysStoppedAnimation<Color>(yellow),
              ),
              SizedBox(
                height: Get.height * 0.3,
              ),
              MyPasswordField(
                text: "New Password",
              ),
              SizedBox(height: 10),
              MyPasswordField(
                text: "Re-Enter New Password",
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
              MyButtonContainer(text: "Reset Password", conColor: yellow),
              SizedBox(height: 10),
              Center(
                  child: Column(
                children: [
                  Text.rich(TextSpan(
                      text: "by continuing you agree to",
                      style: GoogleFonts.archivo(
                        fontSize: 12,
                        color: textColor,
                      ),
                      children: [
                        TextSpan(
                            text: " Terms of Service",
                            style: GoogleFonts.archivo(
                                fontSize: 12,
                                color: blue,
                                decoration: TextDecoration.underline,
                                decorationColor: grey,
                                decorationStyle: TextDecorationStyle.wavy)),
                      ])),
                  const SizedBox(
                    height: 10,
                  ),
                  Text.rich(TextSpan(
                      text: "and",
                      style: GoogleFonts.archivo(
                        fontSize: 12,
                        color: textColor,
                      ),
                      children: [
                        TextSpan(
                            text: " Privacy Policies",
                            style: GoogleFonts.archivo(
                                fontSize: 12,
                                color: blue,
                                decoration: TextDecoration.underline,
                                decorationColor: grey,
                                decorationStyle: TextDecorationStyle.wavy)),
                      ])),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class MyPasswordField extends StatefulWidget {
  final String text;
  const MyPasswordField({super.key, required this.text});

  @override
  State<MyPasswordField> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool valueObsecure = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: grey, width: 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextFormField(
        obscureText: valueObsecure,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.text,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  valueObsecure = !valueObsecure;
                });
              },
              icon: Icon(
                valueObsecure ? Icons.visibility_off : Icons.visibility,
                color: grey,
              )),
          hintStyle: GoogleFonts.archivo(
              color: grey, fontSize: 16, fontWeight: FontWeight.bold),
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
