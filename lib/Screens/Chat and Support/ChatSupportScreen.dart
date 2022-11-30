import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Utils/image_constant.dart';

class ChatSupportScreen extends StatelessWidget {
  const ChatSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.camera_alt_outlined, color: yellow),
            Container(
              height: 42,
              width: 306,
              decoration: BoxDecoration(
                color: yellow.withOpacity(0.2),
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20, top: 10),
                  border: InputBorder.none,
                  hintText: "Write a comment",
                  hintStyle: TextStyle(
                    color: grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  suffixIcon: Icon(Icons.send_outlined, color: yellow),
                ),
              ),
            )
          ],
        )
      ],
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          title: "Chat And Support",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              LinearProgressIndicator(
                value: 0.0,
                backgroundColor: grey,
                valueColor: AlwaysStoppedAnimation<Color>(yellow),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 128,
                width: 304,
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        child: Image.asset(ImageConstant.chat1)),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 104,
                        width: 240,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: grey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(24),
                              topLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                              bottomLeft: Radius.circular(4),
                            )),
                        child: Text(
                          "Hi Kitsbase, Let me know you need help and you can ask us any questions.",
                          style: TextStyle(
                            color: black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        left: Get.width * 0.21,
                        bottom: 0,
                        child: Text(
                          "08:20 AM",
                          style: TextStyle(
                            color: black,
                            fontSize: 12,
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    height: 120,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 200,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: yellow.withOpacity(0.2),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(24),
                                topLeft: Radius.circular(24),
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(4),
                              )),
                          child: Text(
                            "How to create a FinX Stock account?",
                            style: TextStyle(
                              color: yellow,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "08:21 AM",
                          style: TextStyle(
                            color: black,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 176,
                width: 304,
                child: Stack(
                  children: [
                    Positioned(
                        top: Get.height * 0.1,
                        child: Image.asset(ImageConstant.chat2)),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 152,
                        width: 240,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: grey.withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(24),
                              topLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                              bottomLeft: Radius.circular(4),
                            )),
                        child: Text(
                          "Open the FinX Stock app to get started and follow the steps. FinX Stock doesn’t charge a fee to create or maintain your FinX Stock account.",
                          style: TextStyle(
                            color: black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        left: Get.width * 0.21,
                        bottom: 0,
                        child: Text(
                          "08:22 AM",
                          style: TextStyle(
                            color: black,
                            fontSize: 12,
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
