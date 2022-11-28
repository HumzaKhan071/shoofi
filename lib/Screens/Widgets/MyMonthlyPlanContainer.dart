import '../../Routes/routes.dart';

class MyMonthlyPlanContainer extends StatefulWidget {
  final String title;

  final Color color;
  final String description;

  final String totalScreens;
  final String perMonth;

  const MyMonthlyPlanContainer({
    Key? key,
    required this.title,
    required this.color,
    required this.description,
    required this.totalScreens,
    required this.perMonth,
  }) : super(key: key);

  @override
  State<MyMonthlyPlanContainer> createState() => _MyMonthlyPlanContainerState();
}

class _MyMonthlyPlanContainerState extends State<MyMonthlyPlanContainer> {
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
              style: TextStyle(
                color: black,
                fontSize: 12,
                 fontWeight: FontWeight.w500
              )),
          SizedBox(height: 5),
          Text(widget.totalScreens,
              style: TextStyle(
                color: grey,
                fontSize: 12,
              )),
          SizedBox(height: 5),
          Text(widget.perMonth,
              style: TextStyle(
                color: black,
                fontSize: 22,
                 fontWeight: FontWeight.w500
              )),
          SizedBox(height: 10),
          Text(widget.description,
              style: TextStyle(
                color: press ? Colors.white : black,
                fontSize: 8, fontWeight: FontWeight.bold
              )),
        ]),
      ),
    );
  }
}
