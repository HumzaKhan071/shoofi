import 'package:shoofi/Routes/routes.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: Size.fromHeight(50), child: CustomAppBar(title: "Notifications")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LinearProgressIndicator(
              value: 0.0,
              backgroundColor: grey,
              valueColor: AlwaysStoppedAnimation<Color>(yellow),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: List.generate(
                  8,
                  (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                        child: MyListTile(),
                      )),
            )
          ],
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "assets/images/img2.png",
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "The Most Perfect Co...",
            style: TextStyle(
                color: black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Text(
            "Your order has been shipped",
            style: TextStyle(
                color: grey, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          Text(
            "Your order has been shipped",
            style: TextStyle(
                color: grey, fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      trailing: Icon(
        Icons.more_vert_sharp,
        color: black,
      ),
    );
  }
}
