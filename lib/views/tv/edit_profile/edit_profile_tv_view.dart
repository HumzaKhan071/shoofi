import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/views/tv/edit_profile/widgets/edit_profile_container.dart';
import 'package:shoofi/views/tv/maturity_setting/maturity_setting_tv_view.dart';
import 'package:shoofi/views/tv/register_location/register_location_tv_view.dart';
import 'package:shoofi/widgets/custom_tv_app_bar.dart';
import 'package:shoofi/widgets/profile_container.dart';

class EditProfileTvView extends StatelessWidget {
  const EditProfileTvView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100), child: CustomTvAppBar()),
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
                  Get.to(() => RegisterLocationTvView());
                },
              ),
              SizedBox(height: 10),
              EditProfileContainer(
                press: () {
                  Get.to(() => MaturitySettingTvView());
                },
                text: "Maturity Settings",
              ),
            ],
          ),
        ));
  }
}
