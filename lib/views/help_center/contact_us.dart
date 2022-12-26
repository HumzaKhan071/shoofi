import 'package:shoofi/routes/routes.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MyContainer(title: "Customer Service", iconData: Icons.support_agent),
      SizedBox(height: 10),
      MyContainer(title: "Chat and support", iconData: Icons.chat),
      SizedBox(height: 10),
      MyContainer(title: "Whatsapp", iconData: Icons.call),
      SizedBox(height: 10),
      MyContainer(title: "Website", iconData: Icons.fullscreen),
      SizedBox(height: 10),
      MyContainer(title: "Discord", iconData: Icons.discord),
    ]);
  }
}

class MyContainer extends StatelessWidget {
  final String title;
  final IconData iconData;
  const MyContainer({
    Key? key,
    required this.title,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: ListTile(
          leading: Icon(iconData, color: black),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
