import 'package:shoofi/Routes/routes.dart';

class BillingPaymentScreen extends StatefulWidget {
  const BillingPaymentScreen({super.key});

  @override
  State<BillingPaymentScreen> createState() => _BillingPaymentScreenState();
}

class _BillingPaymentScreenState extends State<BillingPaymentScreen> {
  bool isSwitched = false;
  bool isBillingEnabled = false;
  bool valueBox1 = false;
  bool valueBox = false;
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
          "Billing and Payments",
          style: GoogleFonts.archivo(
              color: black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
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
                          style: GoogleFonts.archivo(
                              color: black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Text(
                              "Auto Reccuring",
                              style: GoogleFonts.archivo(
                                  color: black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                            Switch(
                                activeColor: Colors.green,
                                inactiveThumbColor: grey,
                                inactiveTrackColor: grey,
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                }),
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
                            style: GoogleFonts.archivo(
                                color: black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: " Monthly",
                            style: GoogleFonts.archivo(
                              color: black,
                              fontSize: 9,
                            )),
                      ]),
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: "Account Title :",
                            style: GoogleFonts.archivo(
                                color: black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: " Shoofista",
                            style: GoogleFonts.archivo(
                              color: black,
                              fontSize: 9,
                            )),
                      ]),
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: "Card :",
                            style: GoogleFonts.archivo(
                                color: black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: " **** **** **** ***45",
                            style: GoogleFonts.archivo(
                              color: black,
                              fontSize: 9,
                            )),
                      ]),
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: "Date :",
                            style: GoogleFonts.archivo(
                                color: black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: " 10-18-2022",
                            style: GoogleFonts.archivo(
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
                    style: GoogleFonts.archivo(
                      color: black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isBillingEnabled = !isBillingEnabled;
                        });
                      },
                      icon: isBillingEnabled
                          ? Icon(
                              Icons.arrow_drop_down,
                              color: grey,
                            )
                          : Icon(
                              Icons.arrow_upward,
                              color: grey,
                            ))
                ],
              ),
              SizedBox(height: 10),
              if (isBillingEnabled == true) ...[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                shape: CircleBorder(),
                                fillColor: MaterialStateProperty.all(yellow),
                                value: valueBox1,
                                onChanged: (valueBox1) {
                                  setState(() {
                                    this.valueBox1 = valueBox1!;
                                  });
                                }),
                            Text(
                              "Paypal",
                              style: GoogleFonts.archivo(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
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
                            Checkbox(
                                shape: CircleBorder(),
                                fillColor: MaterialStateProperty.all(yellow),
                                value: valueBox,
                                onChanged: (valueBox) {
                                  setState(() {
                                    this.valueBox = valueBox!;
                                  });
                                }),
                            Text(
                              "Debit Credit Card",
                              style: GoogleFonts.archivo(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
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
                          style: GoogleFonts.archivo(
                              color: black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
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
                                hintStyle: GoogleFonts.archivo(
                                    color: grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Card Number",
                          style: GoogleFonts.archivo(
                              color: black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
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
                                hintText:
                                    "****     ****     ****     ****        ",
                                hintStyle: GoogleFonts.archivo(
                                    color: grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Expired Date",
                                  style: GoogleFonts.archivo(
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
                                        hintText: "MM/YY",
                                        hintStyle: GoogleFonts.archivo(
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
                                      style: GoogleFonts.archivo(
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      height: 48,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(width: 1, color: grey),
                                        borderRadius:
                                            BorderRadius.circular(100),
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
                                            hintStyle: GoogleFonts.archivo(
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
                )
              ],
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
