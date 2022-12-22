

import '../../Routes/routes.dart';

class MyPlatformContainer extends StatefulWidget {
  const MyPlatformContainer({super.key});

  @override
  State<MyPlatformContainer> createState() => _MyPlatformContainerState();
}

class _MyPlatformContainerState extends State<MyPlatformContainer> {
  String dropdownvalue = '30 mints';

  // List of items in our dropdown menu
  var items = [
    '30 mints',
    '1 hour',
    '2 hours',
    '3 hours',
    '4 hours',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: EdgeInsets.all(5),
      width: double.infinity,
      child: Column(
        children: [
          MyRow(
            image: ImageConstant.youtube,
            title: "Youtube",
          ),
          MyRow(
            image: ImageConstant.facebook,
            title: "Facebook",
          ),
          MyRow(
            image: ImageConstant.instagram,
            title: "Instagram",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(ImageConstant.fitScreen),
                  SizedBox(width: 5),
                  Text("Screen Time",
                      style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500))
                ],
              ),
              Row(
                children: [
                  Text("Daily",
                      style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  SizedBox(width: 5),
                  Container(
                    height: 26,
                    width: 89,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: yellow,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: DropdownButton(
                        dropdownColor: yellow,
                        underline: Container(),
                        isDense: true,
                        isExpanded: true,
                        value: dropdownvalue,
                        style: TextStyle(
                          color: black,
                          fontSize: 12,
                        ),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        }),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyRow extends StatefulWidget {
  final String image;
  final String title;
  const MyRow({super.key, required this.image, required this.title});

  @override
  State<MyRow> createState() => _MyRowState();
}

class _MyRowState extends State<MyRow> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(widget.image),
            SizedBox(width: 5),
            Text(widget.title,
                style: TextStyle(
                    color: black, fontSize: 14, fontWeight: FontWeight.w500))
          ],
        ),
        Switch(
            activeColor: Colors.green,
            inactiveThumbColor: grey,
            inactiveTrackColor: grey,
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            }),
      ],
    );
  }
}
