import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Utils/country_json.dart';
import 'package:shoofi/Utils/flags.dart';
import 'package:shoofi/controllers/register_location/resgister_location_controller.dart';

class RegisterScreenLocation extends StatelessWidget {
  final bool showBtn;
  const RegisterScreenLocation({super.key, this.showBtn = true});

  @override
  Widget build(BuildContext context) {
    RegisterLocationController controllerLocation =
        Get.put(RegisterLocationController());
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
      body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: [
                    LinearProgressIndicator(
                      value: 0.3,
                      backgroundColor: grey,
                      valueColor: AlwaysStoppedAnimation<Color>(yellow),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 31,
                      width: 293,
                      child: Column(
                        children: [
                          Text("This helps us find you more relevant content",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                          Text("Select one or multiple countries",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: black,
                            width: 1,
                          )),
                      child: TextFormField(
                          onChanged: (value) {
                            controllerLocation.filterSearchResults(value);
                            print(controllerLocation.items);
                          },
                          controller: controllerLocation.editingController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(7),
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Obx(() {
                      return ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 10,
                          );
                        },
                        shrinkWrap: true,
                        primary: false,
                        itemCount: controllerLocation.items.length,
                        itemBuilder: (context, index) {
                          return MyCountryList(
                              countryFlag: Utils.countryCodeToEmoji(
                                  controllerLocation.items[index]["iso2_cc"]),
                              countryName: controllerLocation.items[index]
                                  ["name"]);
                        },
                      );
                    }),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
                ),
              ),
              if (showBtn)
                MyButtonContainer(
                  text: "Next",
                  conColor: yellow,
                  press: () {
                    Get.to(() => SelectCategory());
                  },
                ),
              SizedBox(
                height: 10,
              ),
              Agreements()
            ],
          )),
    );
  }
}
