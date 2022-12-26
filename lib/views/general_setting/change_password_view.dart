import 'package:shoofi/routes/routes.dart';

class ChangePaswwordView extends StatelessWidget {
  const ChangePaswwordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          title: "Re -Create Password",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              LinearProgressIndicator(
                value: 0.0,
                backgroundColor: grey,
                valueColor: AlwaysStoppedAnimation<Color>(yellow),
              ),
              SizedBox(
                height: Get.height * 0.3,
              ),
              MyPasswordField(
                text: "Current Password",
              ),
              SizedBox(height: 10),
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
              MyButtonContainer(
                text: "Reset Password",
                conColor: yellow,
                press: () {
                  Get.offAll(() => LoginView());
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

class MyPasswordField extends StatefulWidget {
  final String text;
  const MyPasswordField({super.key, required this.text});

  @override
  State<MyPasswordField> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool valueObsecure = false;
  TextEditingController passwordController = TextEditingController();
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
        controller: passwordController,
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
          hintStyle:
              TextStyle(color: grey, fontSize: 16, fontWeight: FontWeight.bold),
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
