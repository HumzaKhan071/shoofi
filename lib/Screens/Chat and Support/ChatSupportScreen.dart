import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Utils/image_constant.dart';
import 'package:shoofi/controllers/Chat/chat_controller.dart';

class ChatSupportScreen extends StatelessWidget {
  const ChatSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ChatController controller = ChatController();
    return Scaffold(
      persistentFooterButtons: [
        Row(
          children: [
            Icon(Icons.camera_alt_outlined, color: yellow),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 42,
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
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    suffixIcon: Icon(Icons.send_outlined, color: yellow),
                  ),
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
      body: Padding(
        padding: EdgeInsets.only(left: 8, right: 8, bottom: 20),
        child: Column(
          children: [
            LinearProgressIndicator(
              value: 0.0,
              backgroundColor: grey,
              valueColor: AlwaysStoppedAnimation<Color>(yellow),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: controller.chats.length,
                reverse: true,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return otherPeopleChatContainer(controller.chats[index]);
                  } else {
                    return myChatContainer(controller.chats[index]);
                  }
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  myChatContainer(text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                constraints: BoxConstraints(
                  maxWidth: Get.width * 0.6,
                ),
                decoration: BoxDecoration(
                    color: yellow.withOpacity(0.2),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(4),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: yellow,
                      fontSize: 14,
                    ),
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
    );
  }

  otherPeopleChatContainer(text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(ImageConstant.chat2),
        Container(
          padding: EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                constraints: BoxConstraints(
                  maxWidth: Get.width * 0.6,
                ),
                decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(24),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                    ),
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
    );
  }
}
