import 'package:shoofi/Routes/routes.dart';


class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
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
          "Sign Up",
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
                          style: GoogleFonts.archivo(
                              color: black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "\$6/Month    ",
                          style: GoogleFonts.archivo(
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
                              style: GoogleFonts.archivo(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "you saved 16% with annual blilling",
                              style: GoogleFonts.archivo(
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
                              style: GoogleFonts.archivo(
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
                      style: GoogleFonts.archivo(
                          color: black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              SizedBox(height: 10),
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
                    "       Cardholder’s Name",
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
                    "       Card Number",
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
                          hintText: "****     ****     ****     ****        ",
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
                            "       Expired Date",
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
                                      borderRadius: BorderRadius.circular(100),
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
              SizedBox(height: 20),
              MyButtonContainer(
                text: "Next",
                conColor: yellow,
                press: () {
                  Get.to(() => CompletedScreen());
                },
              ),
              SizedBox(height: 10),
              Text.rich(TextSpan(
                  text: "by continuing you agree to",
                  style: GoogleFonts.archivo(
                    fontSize: 12,
                    color: textColor,
                  ),
                  children: [
                    TextSpan(
                        text: " Terms of Service",
                        style: GoogleFonts.archivo(
                            fontSize: 12,
                            color: blue,
                            decoration: TextDecoration.underline,
                            decorationColor: grey,
                            decorationStyle: TextDecorationStyle.wavy)),
                  ])),
              const SizedBox(
                height: 10,
              ),
              Text.rich(TextSpan(
                  text: "and",
                  style: GoogleFonts.archivo(
                    fontSize: 12,
                    color: textColor,
                  ),
                  children: [
                    TextSpan(
                        text: " Privacy Policies",
                        style: GoogleFonts.archivo(
                            fontSize: 12,
                            color: blue,
                            decoration: TextDecoration.underline,
                            decorationColor: grey,
                            decorationStyle: TextDecorationStyle.wavy)),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
