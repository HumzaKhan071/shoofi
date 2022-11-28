import 'package:shoofi/Routes/routes.dart';

class HomeSearchScreen extends StatefulWidget {
  const HomeSearchScreen({super.key});

  @override
  State<HomeSearchScreen> createState() => _HomeSearchScreenState();
}

class _HomeSearchScreenState extends State<HomeSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: MyTextField(
              text: "Search or Paste URL",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Image.asset("assets/Images/divider.png"),
                        SizedBox(height: 20),
                        Text("Filters",
                            style:
                                TextStyle(color: black, fontSize: 24,  fontWeight: FontWeight.bold)),
                        SizedBox(height: 15),
                        Divider(
                          thickness: 1,
                          indent: 15,
                          endIndent: 15,
                        ),
                        SizedBox(height: 15),
                        MyFilterRow(
                          text: "Sort by",
                        ),
                        MyFilterRow(
                          text: "Type",
                        ),
                        MyFilterRow(text: "Upload Date"),
                        MyFilterRow(text: "Select Location"),
                        MyFilterRow(text: "No of Subscribers"),
                        MyFilterRow(text: "No of Views"),
                      ],
                    ),
                  ));
                },
                icon: Icon(
                  Icons.filter_list_alt,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Flexible(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Wrap(
                  spacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    VideoThumbnail(imgPath: "assets/Images/img1.png"),
                    VideoThumbnail(imgPath: "assets/Images/img2.png"),
                    VideoThumbnail(imgPath: "assets/Images/img3.png"),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class MyFilterRow extends StatefulWidget {
  final String text;
  const MyFilterRow({super.key, required this.text});

  @override
  State<MyFilterRow> createState() => _MyFilterRowState();
}

class _MyFilterRowState extends State<MyFilterRow> {
  String dropdownvalue = 'Relevance';
  var items = ['Relevance', 'Text 1', 'Text 1'];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: TextStyle(color: black, fontWeight: FontWeight.bold , fontSize: 18),
        ),
        Container(
          height: 50,
          width: 150,
          padding: EdgeInsets.all(10),
          child: DropdownButton(
              isExpanded: true,
              underline: Container(),
              value: dropdownvalue,
              style: TextStyle(
                color: black,
                fontSize: 15,
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
