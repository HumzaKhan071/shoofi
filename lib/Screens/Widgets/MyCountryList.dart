import 'package:shoofi/Routes/routes.dart';

class MyCountryList extends StatefulWidget {
  final String countryFlag;
  final String countryName;

  const MyCountryList(
      {super.key, required this.countryFlag, required this.countryName});

  @override
  State<MyCountryList> createState() => _MyCountryListState();
}

class _MyCountryListState extends State<MyCountryList> {
  bool valueBox = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Text(widget.countryFlag),
          SizedBox(
            width: 10,
          ),
          RichText(
            overflow: TextOverflow.ellipsis,
            strutStyle: StrutStyle(fontSize: 14.0),
            text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 14),
                text: widget.countryName),
          ),
        ]),
        Container(
          height: 23,
          width: 23,
          decoration: BoxDecoration(
              border: Border.all(
            color: yellow,
            width: 1,
          )),
          child: Checkbox(
              fillColor: MaterialStateProperty.all(yellow),
              checkColor: black,
              value: valueBox,
              onChanged: (valueBox) {
                setState(() {
                  this.valueBox = valueBox!;
                });
              }),
        )
      ],
    );
  }
}
