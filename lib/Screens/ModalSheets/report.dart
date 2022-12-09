import 'package:shoofi/Routes/routes.dart';


void ReportBottomModalSheet() {
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
        MyReportRow(title: "Sexual Content"),
        MyReportRow(title: "Abusive content"),
        MyReportRow(title: "Spam or  misleading"),
        MyReportRow(title: "Child abuse"),
        MyReportRow(title: "Other"),
        SizedBox(height: 20),
        MyButtonContainer(text: "Report", conColor: yellow)
      ],
    ),
  )));
}