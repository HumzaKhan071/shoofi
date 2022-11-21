import 'package:shoofi/Routes/routes.dart';



class InstagramScreen extends StatefulWidget {
  const InstagramScreen({super.key});

  @override
  State<InstagramScreen> createState() => _InstagramScreenState();
}

class _InstagramScreenState extends State<InstagramScreen> {
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
                value: 0.5,
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
                    Text("Welcome to Shoofi",
                        style: GoogleFonts.archivo(
                            color: grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                    Text.rich(
                      TextSpan(
                          text: "Pick Your favourite ",
                          style: GoogleFonts.archivo(
                              color: grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(
                              text: "Instagram ",
                              style: GoogleFonts.archivo(
                                  color: black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "Channels",
                              style: GoogleFonts.archivo(
                                  color: grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                childAspectRatio: 2 / 2.3,
                physics: BouncingScrollPhysics(),
                children: List.generate(
                    myInstagramModel.length,
                    (index) => MyInstagramContainer(
                          image: myInstagramModel[index].image,
                        )),
              ),
              SizedBox(height: 20),
              MyButtonContainer(text: "Next", conColor: yellow,press: (){
                Get.to(()=>SelectPlan());
              },),
              SizedBox(
                height: 10,
              ),
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
