import 'package:shoofi/Routes/routes.dart';

class RegisterScreenLocation extends StatefulWidget {
  final bool showBtn;
  const RegisterScreenLocation({super.key, this.showBtn = true});

  @override
  State<RegisterScreenLocation> createState() => _RegisterScreenLocationState();
}

class _RegisterScreenLocationState extends State<RegisterScreenLocation> {
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
            child: Column(children: [
              LinearProgressIndicator(
                value: 0.3,
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
                    Text("This helps us find you more relevant content",
                        style: GoogleFonts.archivo(
                            color: black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                    Text("Select one or multiple countries",
                        style: GoogleFonts.archivo(
                            color: black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: black,
                      width: 1,
                    )),
                child: TextFormField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(7),
                  hintText: "Search",
                  hintStyle: GoogleFonts.archivo(
                      color: black, fontSize: 16, fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                    MyCountryListModel.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: MyCountryList(
                              countryFlag:
                                  MyCountryListModel[index].countryFlag,
                              countryName:
                                  MyCountryListModel[index].countryName),
                        )),
              ),
              SizedBox(
                height: 20,
              ),
              if (widget.showBtn)
                MyButtonContainer(
                  text: "Next",
                  conColor: yellow,
                  press: () {
                    Get.to(() => SelectCategory());
                  },
                ),
              SizedBox(
                height: 10,
              ),
              Agreements()
            ])),
      ),
    );
  }
}
