import 'package:shoofi/Routes/routes.dart';

void createWatchListBottomSheet() {
  Get.bottomSheet((Container(
    height: 275,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "Add New Watchlist",
            style: TextStyle(
              color: black,
              fontSize: 28,
            ),
          ),
        ),
        SizedBox(height: 20),
        Divider(
          color: grey,
          thickness: 1,
        ),
        SizedBox(
          height: 30,
        ),
        Text("Watch list tile",
            style: TextStyle(
              color: black,
              fontSize: 14,
            )),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 48,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: grey, width: 1)),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Watchlist Title",
                hintStyle: TextStyle(
                  color: black,
                  fontSize: 14,
                ),
                contentPadding: EdgeInsets.all(10)),
          ),
        ),
        SizedBox(height: 10),
        MyButtonContainer(text: "Next", conColor: yellow)
      ],
    ),
  )));
}