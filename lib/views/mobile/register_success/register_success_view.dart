import 'package:shoofi/routes/routes.dart';
import '../add_new_profile/add_new_profile_view.dart';

class RegisterSuccessView extends StatelessWidget {
  final bool fromManageSubscription;

  const RegisterSuccessView({super.key, required this.fromManageSubscription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(title: "Sign Up")),
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
                height: 40,
              ),
              SizedBox(
                height: 31,
                width: 293,
                child: Center(
                  child: Text(
                      fromManageSubscription
                          ? "Upgraded Successfully"
                          : "Congratulation your signup is completed",
                      style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 281,
                width: 256,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageConstant.firework),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Image.asset(ImageConstant.a),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 61,
                width: 323,
                child: Center(
                    child: Column(
                  children: [
                    Text(
                      fromManageSubscription ? "CONGRATULATION" : "ENJOY YOUR",
                      style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      fromManageSubscription
                          ? "YOUR SUBSCRIPTION IS UPGRADED"
                          : "90 DAYS FREE TRAIL",
                      style: TextStyle(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ),
              SizedBox(height: 20),
              if (!fromManageSubscription) ...[
                MyButtonContainer(
                  text: "Next",
                  conColor: yellow,
                  press: () {
                    Get.to(() => AddNewProfileView());
                  },
                ),
              ],
              SizedBox(height: 10),
              Agreements()
            ],
          ),
        ),
      ),
    );
  }
}
