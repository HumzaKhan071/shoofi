import 'package:shoofi/Routes/routes.dart';

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({super.key});

  @override
  State<RegisterScreen2> createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  TextEditingController numberController = TextEditingController();

  String dropdownvalue = 'Male';
  var items = ['Male', 'Female'];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    LinearProgressIndicator(
                      value: 0.1,
                      backgroundColor: grey,
                      valueColor: AlwaysStoppedAnimation<Color>(yellow),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: CircleAvatar(
                        backgroundColor: yellow,
                        radius: 55,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            "assets/images/avatar.png",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Click to select avatar",
                      style: TextStyle(
                          color: black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextField(
                      text: "Shaista",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextField(
                      text: "shaista_isru",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: grey, width: 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextFormField(
                        controller: numberController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "+  01  234 567 890",
                          hintStyle: TextStyle(
                              color: grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyPasswordField(text: "Password"),
                    const SizedBox(
                      height: 10,
                    ),
                    MyPasswordField(text: "Confirm Password"),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 48,
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: grey, width: 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: DropdownButton(
                          isExpanded: true,
                          underline: Container(),
                          value: dropdownvalue,
                          style: TextStyle(
                              color: grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MyButtonContainer(
                      text: "Next",
                      conColor: yellow,
                      press: () {
                        Get.to(() => VerifyScreen(
                              title: "Check your email",
                              subTitle:
                                  "We have sent the code to the email on your device",
                            ));
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Agreements()
                  ],
                ),
              ),
            )));
  }
}
