import 'package:shoofi/Routes/routes.dart';


class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
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
                height: 31,
                width: 293,
                child: Center(
                  child: Text("Congratulation your signup is completed",
                      style: GoogleFonts.archivo(
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
                    image: AssetImage("assets/Images/firework.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Image.asset("assets/Images/a.png"),
              ),
              SizedBox(height: 20),
              Container(
                height: 61,
                width: 323,
                child: Center(
                    child: Column(
                  children: [
                    Text(
                      "Enjoy your".toUpperCase(),
                      style: GoogleFonts.archivo(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "90 Days free trail".toUpperCase(),
                      style: GoogleFonts.archivo(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ),
              SizedBox(height: 20),
              MyButtonContainer(text: "Next", conColor: yellow,press: (){
                Get.to(()=>CreateUserProfileScreen());
              },),
              SizedBox(height: 10),
           Agreements()
            ],
          ),
        ),
      ),
    );
  }
}
