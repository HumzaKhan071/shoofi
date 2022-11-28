import 'package:shoofi/Routes/routes.dart';

class GeneralSettingScreen extends StatelessWidget {
  const GeneralSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 40,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: grey,
            )),
        centerTitle: true,
        title: Text(
          "General Settings",
          style: TextStyle(color: black, fontSize: 14,fontWeight: FontWeight.bold ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            LinearProgressIndicator(
              value: 0.0,
              backgroundColor: grey,
              valueColor: AlwaysStoppedAnimation<Color>(yellow),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(
                Icons.password,
                color: black,
              ),
              title: Text(
                "Change Password",
                style: TextStyle(color: black, fontSize: 14, ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: black,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.subscriptions,
                color: black,
              ),
              title: Text(
                "Manage Subscriptions",
                style: TextStyle(color: black, fontSize: 14, ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: black,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.supervised_user_circle_rounded,
                color: black,
              ),
              title: Text(
                "User Agreement",
                style: TextStyle(color: black, fontSize: 14, ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: black,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.delete_outline,
                color: black,
              ),
              title: Text(
                "Delete Account",
                style: TextStyle(color: black, fontSize: 14, ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: black,
              ),
            ),
            IconButton(
                onPressed: () {
                  ReportBottomModalSheet();
                },
                icon: Icon(Icons.abc))
          ],
        ),
      ),
    );
  }

  void MoreOptionsBottomModalSheet() {
    Get.bottomSheet((Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )),
        child: Column(
          children: [
            Center(
              child: Text(
                "More Options",
                style: TextStyle(color: black, fontSize: 28, ),
              ),
            ),
            SizedBox(height: 20),
            Divider(
              color: grey,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                Icons.lock_clock,
                color: black,
              ),
              title: Text(
                "Save to watch later",
                style: TextStyle(
                  color: black,
                  fontSize: 14,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.pause_presentation,
                color: black,
              ),
              title: Text(
                "Save to my list",
                style: TextStyle(
                  color: black,
                  fontSize: 14,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                color: black,
              ),
              title: Text(
                "Share",
                style: TextStyle(
                  color: black,
                  fontSize: 14,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.not_interested,
                color: black,
              ),
              title: Text(
                "Not interested",
                style: TextStyle(
                  color: black,
                  fontSize: 14,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.report,
                color: black,
              ),
              title: Text(
                "Report",
                style: TextStyle(
                  color: black,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ))));
  }
}

void WatchlistsBottomModalSheet() {
  Get.bottomSheet((Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          )),
      child: Column(
        children: [
          Center(
            child: Text(
              "Watchlists",
              style: TextStyle(color: black, fontSize: 28, ),
            ),
          ),
          SizedBox(height: 20),
          Divider(
            color: grey,
            thickness: 1,
          ),
          ListTile(
            onTap: () {
              Get.bottomSheet((Container(
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
                        style: TextStyle(color: black, fontSize: 28, ),
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
                        style: TextStyle(color: black, fontSize: 14, )),
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
                            hintStyle:
                                TextStyle(color: black, fontSize: 14, ),
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),
                    SizedBox(height: 10),
                    MyButtonContainer(text: "Next", conColor: yellow)
                  ],
                ),
              )));
            },
            leading: Icon(
              Icons.watch_later_outlined,
              color: black,
            ),
            minLeadingWidth: 5,
            title: Text(
              "Create a Watchlist",
              style: TextStyle(
                color: black,
                fontSize: 14,
                
              ),
            ),
          ),
          MyWatchlistTIle(
            title: "Watch later",
          ),
          MyWatchlistTIle(
            title: "Youtube Watchlist",
          ),
          MyWatchlistTIle(
            title: "Facebook Watchlist",
          ),
          MyWatchlistTIle(
            title: "Instagram Watchlist",
          ),
        ],
      ))));
}

void ReportBottomModalSheet() {
  Get.bottomSheet((Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        )),
    child: Column(
      children: [
        Center(
          child: Text(
            "Report",
            style: TextStyle(color: black, fontSize: 28, ),
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
  int _groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          activeColor: yellow,
          value: 0,
          groupValue: _groupValue,
          onChanged: (NewValue) {
            setState(() {
              _groupValue = NewValue as int;
            });
          },
        ),
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

class MyWatchlistTIle extends StatelessWidget {
  final String title;
  const MyWatchlistTIle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "assets/Images/img2.png",
        height: 20,
      ),
      minLeadingWidth: 5,
      title: Text(
        title,
        style: TextStyle(
          color: black,
          fontSize: 14,
        ),
      ),
    );
  }
}
