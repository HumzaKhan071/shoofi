import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Utils/image_constant.dart';

filterBottomSheet() {
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
                      Image.asset(ImageConstant.divider),
                      SizedBox(height: 20),
                      Text("Filters",
                          style: TextStyle(
                              color: black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Divider(
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),
                      SizedBox(height: 5),
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
  }