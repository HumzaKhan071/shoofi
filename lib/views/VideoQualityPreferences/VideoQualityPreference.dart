import "package:shoofi/Routes/routes.dart";

class VideoQualityPreference extends StatelessWidget {
  const VideoQualityPreference({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          title: "Video Quality Preference",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              LinearProgressIndicator(
                value: 0.0,
                backgroundColor: grey,
                valueColor: AlwaysStoppedAnimation<Color>(yellow),
              ),
              SizedBox(height: 20),
              MyVPRow(title: "Auto (Recommended)"),
              SizedBox(height: 10),
              MyVPRow(title: "Higher Quality"),
              SizedBox(
                height: 10,
              ),
              MyVPRow(title: "Data Saver"),
            ],
          ),
        ),
      ),
    );
  }
}

class MyVPRow extends StatefulWidget {
  final String title;
  const MyVPRow({super.key, required this.title});

  @override
  State<MyVPRow> createState() => _MyVPRowState();
}

class _MyVPRowState extends State<MyVPRow> {
  String dropdownvalue = 'Data only';

  // List of items in our dropdown menu
  var items = [
    'Data only',
    'Data and Wifi',
    'Wifi only',
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: TextStyle(
              color: black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Container(
          height: 26,
          width: 120,
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
    );
  }
}
