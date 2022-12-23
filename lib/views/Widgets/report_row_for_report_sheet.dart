import '../../Routes/routes.dart';

class ReportRowForBottomSheet extends StatefulWidget {
  final String title;
  const ReportRowForBottomSheet({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<ReportRowForBottomSheet> createState() =>
      _ReportRowForBottomSheetState();
}

class _ReportRowForBottomSheetState extends State<ReportRowForBottomSheet> {
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
