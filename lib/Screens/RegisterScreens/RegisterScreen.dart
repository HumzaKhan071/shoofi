import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/controllers/registration/registration_controller.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegistrationController controller = Get.put(RegistrationController());

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
                    GetBuilder<RegistrationController>(builder: (context) {
                      return controller.imageFile == null
                          ? InkWell(
                              onTap: () {
                                controller.getFromGallery();
                              },
                              child: Image.asset("assets/Images/circle.png"))
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
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Click to select avatar or upload picture",
                      style: TextStyle(
                          color: black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
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
                        controller: controller.emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
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
                    Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: grey, width: 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextFormField(
                        controller: controller.numberController,
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
                    GetBuilder<RegistrationController>(builder: (context) {
                      return Container(
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
                            value: controller.dropdownvalue,
                            style: TextStyle(
                                color: grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            items: controller.gender.map((String i) {
                              return DropdownMenuItem(
                                value: i,
                                child: Text(i),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              controller.dropDownValueChange(newValue);
                            }),
                      );
                    }),
                    const SizedBox(
                      height: 30,
                    ),
                    MyButtonContainer(
                        text: "Next",
                        conColor: yellow,
                        press: () {
                          Get.to(() => ForgotScreen());
                        }),
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
