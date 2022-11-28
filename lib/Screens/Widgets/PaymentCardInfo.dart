import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/controllers/PaymentInfoCardController/payment_card_controller.dart';

class PaymentCardInfo extends StatelessWidget {
  PaymentCardController controller = PaymentCardController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Obx(
                  () => Checkbox(
                      shape: CircleBorder(),
                      fillColor: MaterialStateProperty.all(yellow),
                      value: controller.valueBox.value,
                      onChanged: (valueBox) {
                        controller.valueBox1.value = false;
                        controller.valueBox.value = valueBox!;
                      }),
                ),
                Text(
                  "Paypal",
                  style: TextStyle(
                      color: black, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Image.asset("assets/Cards/paypal.png")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Obx(() => Checkbox(
                    shape: CircleBorder(),
                    fillColor: MaterialStateProperty.all(yellow),
                    value: controller.valueBox1.value,
                    onChanged: (valueBox1) {
                      controller.valueBox.value = false;
                      controller.valueBox1.value = valueBox1!;
                    })),
                Text(
                  "Debit Credit Card",
                  style: TextStyle(
                      color: black, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset("assets/Cards/americanExpress.png"),
                SizedBox(width: 2),
                Image.asset("assets/Cards/discover.png"),
                SizedBox(width: 2),
                Image.asset("assets/Cards/visa.png"),
              ],
            )
          ],
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cardholder’s Name",
              style: TextStyle(
                  color: black, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Container(
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: grey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Your Name Here",
                    hintStyle: TextStyle(
                        color: grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Card Number",
              style: TextStyle(
                  color: black, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Container(
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: grey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "****     ****     ****     ****        ",
                    hintStyle: TextStyle(
                        color: grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Expired Date",
                          style: TextStyle(
                              color: black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 48,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: grey),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "MM/YY",
                                hintStyle: TextStyle(
                                    color: grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "CVC",
                              style: TextStyle(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 48,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: grey),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: "***",
                                    hintStyle: TextStyle(
                                        color: grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
