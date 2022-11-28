import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Screens/Widgets/PaymentCardInfo.dart';
import 'package:shoofi/controllers/BillingAndPaymentController/billing_payment_controller.dart';

class BillingPaymentScreen extends StatelessWidget {
  BillingPaymentController controller = BillingPaymentController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          title: "App Settings",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              LinearProgressIndicator(
                backgroundColor: grey,
                value: 0,
                valueColor: AlwaysStoppedAnimation<Color>(yellow),
              ),
              SizedBox(height: 20),
              Container(
                height: 150,
                padding: EdgeInsets.all(15),
                width: 343,
                decoration: BoxDecoration(
                    color: Color(0xffFFFBEC),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(13)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Current Billing",
                          style: TextStyle(
                              color: black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Text(
                              "Auto Reccuring",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                            Obx(
                              () => Switch(
                                  activeColor: Colors.green,
                                  inactiveThumbColor: grey,
                                  inactiveTrackColor: grey,
                                  value: controller.isSwitched.value,
                                  onChanged: (value) {
                                    controller.isSwitched.value = value;
                                  }),
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(
                      color: grey,
                      thickness: 1,
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: "Subscription Plan :",
                            style: TextStyle(
                                color: black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: " Monthly",
                            style: TextStyle(
                              color: black,
                              fontSize: 9,
                            )),
                      ]),
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: "Account Title :",
                            style: TextStyle(
                              color: black,
                              fontSize: 10,
                            )),
                        TextSpan(
                            text: " Shoofista",
                            style: TextStyle(
                              color: black,
                              fontSize: 9,
                            )),
                      ]),
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: "Card :",
                            style: TextStyle(
                              color: black,
                              fontSize: 10,
                            )),
                        TextSpan(
                            text: " **** **** **** ***45",
                            style: TextStyle(
                              color: black,
                              fontSize: 9,
                            )),
                      ]),
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: "Date :",
                            style: TextStyle(
                              color: black,
                              fontSize: 10,
                            )),
                        TextSpan(
                            text: " 10-18-2022",
                            style: TextStyle(
                              color: black,
                              fontSize: 9,
                            )),
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Update Billing Details",
                    style: TextStyle(
                      color: black,
                      fontSize: 16,
                    ),
                  ),
                  Obx(() => IconButton(
                      onPressed: () {
                        controller.isBillingEnabled.value =
                            !controller.isBillingEnabled.value;
                      },
                      icon: controller.isBillingEnabled.value
                          ? Image.asset("assets/Images/arrow_upward.png")
                          : Image.asset("assets/Images/arrow_downward.png")))
                ],
              ),
              SizedBox(height: 10),
              Obx(() => controller.isBillingEnabled.value
                  ? PaymentCardInfo()
                  : SizedBox()),
              SizedBox(height: 20),
              MyButtonContainer(text: "Next", conColor: yellow),
              SizedBox(
                height: 10,
              ),
              Agreements()
            ],
          ),
        ),
      ),
    );
  }
}
