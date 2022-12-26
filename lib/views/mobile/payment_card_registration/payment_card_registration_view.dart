import 'package:shoofi/routes/routes.dart';
import 'package:shoofi/views/mobile/register_success/register_success_view.dart';

class PaymentCardRegistrationView extends StatefulWidget {
  final bool fromManageSubscription;
  const PaymentCardRegistrationView(
      {super.key, required this.fromManageSubscription});

  @override
  State<PaymentCardRegistrationView> createState() =>
      _PaymentCardRegistrationViewState();
}

class _PaymentCardRegistrationViewState
    extends State<PaymentCardRegistrationView> {
  @override
  Widget build(BuildContext context) {
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
              Container(
                height: 74,
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19), color: yellow),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select : Yearly Premuim Plan",
                          style: TextStyle(
                              color: black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "\$6/Month    ",
                          style: TextStyle(
                              color: black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Annually billed \$72",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "you saved 16% with annual blilling",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Container(
                          height: 24,
                          width: 115,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white.withOpacity(0.8)),
                          child: Center(
                            child: Text(
                              "Grand total : \$0.00",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 31,
                  width: 293,
                  child: Center(
                    child: Text(
                      "You will be charged after 90 Days free trail",
                      style: TextStyle(
                          color: black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              SizedBox(height: 20),
              PaymentCardInfo(),
              SizedBox(height: 20),
              MyButtonContainer(
                text: "Next",
                conColor: yellow,
                press: () {
                  Get.to(() => RegisterSuccessView(
                      fromManageSubscription: widget.fromManageSubscription));
                },
              ),
              SizedBox(height: 10),
              Agreements()
            ],
          ),
        ),
      ),
    );
  }
}
