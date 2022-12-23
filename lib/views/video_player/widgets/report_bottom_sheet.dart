import '../../../Routes/routes.dart';

void reportBottomSheet() {
  Get.bottomSheet((Container(
    // padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        )),
    child: Column(
      children: [
        SizedBox(height: 10),
        Center(
          child: Text(
            "Report",
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
        ReportRowForBottomSheet(title: "Sexual Content"),
        ReportRowForBottomSheet(title: "Abusive content"),
        ReportRowForBottomSheet(title: "Spam or  misleading"),
        ReportRowForBottomSheet(title: "Child abuse"),
        ReportRowForBottomSheet(title: "Other"),
        SizedBox(height: 20),
        MyButtonContainer(text: "Report", conColor: yellow)
      ],
    ),
  )));
}
