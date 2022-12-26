import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/mobile/register_location/register_location_view.dart';

class VerifyView extends StatefulWidget {
  final String title;
  final String subTitle;
  const VerifyView({super.key, required this.title, required this.subTitle});

  @override
  State<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
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
          style: TextStyle(
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
                child: Text(widget.title,
                    style: TextStyle(color: black, fontSize: 24)),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 47,
                width: 225,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.subTitle,
                        style: TextStyle(color: black, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(ImageConstant.varificationIllustration),
              SizedBox(
                height: 30,
              ),
              Pinput(
                preFilledWidget: Text(
                  "--",
                  style: TextStyle(color: Colors.grey),
                ),
                autofocus: true,
                showCursor: false,
                defaultPinTheme: PinTheme(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: grey),
                        color: Colors.white)),
              ),
              SizedBox(
                height: 30,
              ),
              Text.rich(TextSpan(
                  text: "Code expires in ",
                  style: TextStyle(color: black, fontSize: 12),
                  children: [
                    TextSpan(
                      text: "00:59",
                      style: TextStyle(color: red, fontSize: 12),
                    ),
                  ])),
              SizedBox(
                height: 10,
              ),
              Text.rich(TextSpan(
                  text: "Didn’t receive code? ",
                  style: TextStyle(color: black, fontSize: 12),
                  children: [
                    TextSpan(
                      text: " Resend Code",
                      style: TextStyle(color: red, fontSize: 12),
                    ),
                  ])),
              SizedBox(
                height: Get.height * 0.2,
              ),
              MyButtonContainer(
                text: "Verify",
                conColor: yellow,
                press: () {
                  Get.to(() => RegisterLocationView());
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
          hintStyle:
              TextStyle(color: grey, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
