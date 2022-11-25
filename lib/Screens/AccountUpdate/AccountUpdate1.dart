import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/AccountUpdate/AccountUpdate2.dart';

class AccountUpdate1 extends StatefulWidget {
  const AccountUpdate1({super.key});

  @override
  State<AccountUpdate1> createState() => _AccountUpdate1State();
}

class _AccountUpdate1State extends State<AccountUpdate1> {
  TextEditingController numberController = TextEditingController();

  String dropdownvalue = 'Male';
  var items = ['Male', 'Female'];
  String dropdownvalue1 = 'UAE';
  var items1 = ['UAE', 'USA'];
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
                style: GoogleFonts.archivo(
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
                            "assets/Images/a.png",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Click to select avatar",
                      style: GoogleFonts.archivo(
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
                    const SizedBox(
                      height: 10,
                    ),
                    MyPasswordField(text: "Password"),
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
                      text: "Update",
                      conColor: yellow,
                      press: () {
                        Get.to(() => AccountUpdate2());
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
