import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/mobile/register_location/widget/MyCountryList.dart';
import 'package:shoofi/widgets/custom_tv_app_bar.dart';

class RegisterLocationTvView extends StatelessWidget {
  const RegisterLocationTvView({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterLocationController controllerLocation =
        Get.put(RegisterLocationController());
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: CustomTvAppBar(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
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
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        hintText: "Search or paste URL",
                        hintStyle: TextStyle(
                            color: grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        suffixIcon: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: MyButtonContainer(
                                height: 38,
                                width: 270,
                                text: "Search",
                                conColor: yellow)))),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: 500,
                    child: Column(children: [
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
              ),
              MyButtonContainer(
                text: "Confirm",
                conColor: yellow,
                height: 38,
                width: 270,
              )
            ],
          ),
        ));
  }
}