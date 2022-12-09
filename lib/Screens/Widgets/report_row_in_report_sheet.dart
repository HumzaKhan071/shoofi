import 'package:shoofi/Routes/routes.dart';

class MyReportRow extends StatefulWidget {
  final String title;
  const MyReportRow({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyReportRow> createState() => _MyReportRowState();
}

class _MyReportRowState extends State<MyReportRow> {
  final int _groupValue = 0;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            icon: Icon(isSelected
                ? Icons.radio_button_checked
                : Icons.radio_button_off_outlined)),
        SizedBox(width: 10),
        Text(
          widget.title,
          style: TextStyle(
            color: black,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}