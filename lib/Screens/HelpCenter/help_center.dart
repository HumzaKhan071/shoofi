import 'package:shoofi/Routes/routes.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            "Help Center",
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
                  value: 0.0,
                  backgroundColor: grey,
                  valueColor: AlwaysStoppedAnimation<Color>(yellow),
                ),
                TabBar(
                  indicatorColor: yellow,
                  labelColor: black,
                  labelStyle: GoogleFonts.archivo(
                      fontSize: 14, fontWeight: FontWeight.w500),
                  unselectedLabelColor: grey,
                  tabs: [
                    Tab(
                      text: "FAQ",
                    ),
                    Tab(
                      text: "Contact Us",
                    ),
                  ],
                ),
                SizedBox(height: 20),
               
                SizedBox(height: 20),
                MyRow(title: "How to use shoofi?"),
                SizedBox(height: 10),
                MyRow(title: "Subscriptions?"),
                SizedBox(height: 10),
                MyRow(title: "Why shoofi?"),
                SizedBox(height: 10),
                MyRow(title: "How to use shoofi?"),
                SizedBox(height: 10),
                MyRow(title: "Subscriptions?"),
                SizedBox(height: 10),
                MyRow(title: "Why shoofi?"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  final String title;
  const MyRow({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.archivo(
            fontSize: 14,
            color: black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(Icons.arrow_drop_down, color: black)
      ],
    );
  }
}
