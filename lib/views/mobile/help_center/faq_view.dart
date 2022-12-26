import 'package:shoofi/routes/routes.dart';

class FaqView extends StatelessWidget {
  const FaqView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "What is shoofi?",
                    style: TextStyle(
                      fontSize: 18,
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: black,
                  )
                ],
              ),
              Divider(
                color: grey,
                thickness: 1,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                style: TextStyle(
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        MyRow(title: "How to use shoofi?"),
        SizedBox(height: 20),
        MyRow(title: "Subscriptions?"),
        SizedBox(height: 20),
        MyRow(title: "Why shoofi?"),
        SizedBox(height: 20),
        MyRow(title: "How to use shoofi?"),
        SizedBox(height: 20),
        MyRow(title: "Subscriptions?"),
        SizedBox(height: 20),
        MyRow(title: "Why shoofi?"),
      ],
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
          style: TextStyle(
            fontSize: 18,
            color: black,
          ),
        ),
        Icon(Icons.arrow_drop_down, color: black)
      ],
    );
  }
}
