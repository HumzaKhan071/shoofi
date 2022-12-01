import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/AccountUpdate/AccountUpdate2.dart';
import 'package:shoofi/Utils/country_json.dart';
import 'package:shoofi/Utils/flags.dart';

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
  var selectedCountry = 'Select Country';
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
                            "assets/images/a.png",
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
                      enabled: false,
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
                    InkWell(
                      onTap: () {
                        selectCountryDialog(context);
                      },
                      child: MyTextField(
                        text: selectedCountry,
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        enabled: false,
                      ),
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
                      height: 10,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ListTile(
                      onTap: () {
                        Get.to(AccountUpdate2());
                      },
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: black,
                      ),
                      leading: Icon(Icons.check_circle_outline),
                      title: Text(
                        "Profile Lock",
                        style: TextStyle(
                            color: black,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    MyButtonContainer(
                      text: "Update",
                      conColor: yellow,
                      press: () {},
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

  Future<dynamic> selectCountryDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (c) {
          return Dialog(
            child: Container(
              height: Get.height * 0.7,
              width: Get.width * 0.8,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Center(
                      child: Text("Select Country",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold))),
                  SizedBox(height: 10),
                  Divider(thickness: 2),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                        itemCount: countryCodes.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                              leading: Text(Utils.countryCodeToEmoji(
                                  countryCodes[index]["iso2_cc"])),
                              title: Text(countryCodes[index]["name"]),
                              onTap: () {
                                setState(() {
                                  selectedCountry = countryCodes[index]["name"];
                                });
                                Get.back();
                              });
                        }),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
