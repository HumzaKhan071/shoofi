import 'package:shoofi/Routes/routes.dart';



class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
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
                          text: "Pick Your favourite",
                          style: GoogleFonts.archivo(
                              color: grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(
                              text: " Content Category",
                              style: GoogleFonts.archivo(
                                  color: black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
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
                    mySelectCategoryModel.length,
                    (index) => MyCategoryContainer(
                        image: mySelectCategoryModel[index].image,
                        title: mySelectCategoryModel[index].title)),
              ),
              SizedBox(height: 20),
              MyButtonContainer(
                text: "Next",
                conColor: yellow,
                press: () {
                  Get.to(() => YoutubeScreen());
                },
              ),
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
