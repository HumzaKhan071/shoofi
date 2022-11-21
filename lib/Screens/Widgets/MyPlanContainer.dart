import '../../Routes/routes.dart';

class MyYearlyPlanContainer extends StatefulWidget {
  final String title;
  final String price;
  final Color color;
  final String description;

  final String totalScreens;
  final String perMonth;

  const MyYearlyPlanContainer({
    Key? key,
    required this.title,
    required this.price,
    required this.color,
    required this.description,
    required this.totalScreens,
    required this.perMonth,
  }) : super(key: key);

  @override
  State<MyYearlyPlanContainer> createState() => _MyYearlyPlanContainerState();
}

class _MyYearlyPlanContainerState extends State<MyYearlyPlanContainer> {
  bool press = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
      ),
      onPressed: () {
        setState(() {
          press = !press;
        });
      },
      child: Container(
        height: 140,
        padding: EdgeInsets.all(15),
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: press ? widget.color : Colors.white,
            border: Border.all(
              color: press ? widget.color : yellow,
              width: 1,
            )),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(widget.title,
              style: GoogleFonts.archivo(
                  color: black, fontSize: 12, fontWeight: FontWeight.w500)),
          SizedBox(height: 5),
          Text(widget.totalScreens,
              style: GoogleFonts.archivo(
                color: grey,
                fontSize: 12,
              )),
          SizedBox(height: 5),
          Text(widget.perMonth,
              style: GoogleFonts.archivo(
                  color: black, fontSize: 22, fontWeight: FontWeight.w500)),
          SizedBox(height: 10),
          Text(widget.price,
              style: GoogleFonts.archivo(
                  color: press ? Colors.white : black,
                  fontSize: 8,
                  fontWeight: FontWeight.bold)),
          Text(widget.description,
              style: GoogleFonts.archivo(
                  color: press ? Colors.white : black,
                  fontSize: 8,
                  fontWeight: FontWeight.bold)),
        ]),
      ),
    );
  }
}
