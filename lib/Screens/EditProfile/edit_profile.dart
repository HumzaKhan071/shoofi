import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/RegisterScreens/tv/location_tv.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100), child: customTvAppBar()),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              ProfileContainer(
                  containerHeight: 72,
                  containerWidth: 72,
                  imageHeight: 65,
                  imageWidth: 65),
              SizedBox(height: 10),
              Container(
                height: 48,
                width: 193,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: black,
                      width: 1,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Shoofista",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.edit_outlined),
                  ],
                ),
              ),
              SizedBox(height: 39),
              EditProfileContainer(
                text: "Country",
                press: () {
                  Get.to(() => LocationTv());
                },
              ),
              SizedBox(height: 10),
              EditProfileContainer(
                press: () {
                  Get.to(() => MaturityScreen());
                },
                text: "Maturity Settings",
              ),
            ],
          ),
        ));
  }
}
