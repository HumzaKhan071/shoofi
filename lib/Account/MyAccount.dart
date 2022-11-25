import '../Routes/routes.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProfileAvatar(
                  radius: 30,
                  backgroundImagePath: "assets/Images/a.png",
                  onTap: () {
                    print("object");
                  }),
              ProfileAvatar(
                  radius: 30,
                  backgroundImagePath: "assets/Images/a.png",
                  onTap: () {
                    print("object");
                  }),
              ProfileAvatar(
                  radius: 30,
                  onTap: () {
                    print("object");
                  }),
              ProfileAvatar(
                  radius: 30,
                  onTap: () {
                    print("object");
                  }),
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(
              Icons.lock_clock_outlined,
              color: black,
            ),
            title: Text("Profile Lock",
                style: GoogleFonts.archivo(
                    color: black, fontSize: 16, fontWeight: FontWeight.bold)),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: black,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.notification_important,
              color: black,
            ),
            title: Text("Notifications",
                style: GoogleFonts.archivo(
                    color: black, fontSize: 16, fontWeight: FontWeight.bold)),
            trailing: Wrap(
              children: [
                Switch(
                    activeColor: Colors.green,
                    inactiveThumbColor: grey,
                    inactiveTrackColor: grey,
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    }),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: black,
                ),
              ],
            ),
          ),
          if (isSwitched == true) ...[
            ListTile(
                leading: Image.asset("assets/Images/img2.png"),
                title: Text("The Most Perfect Co...",
                    style: GoogleFonts.archivo(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                subtitle: Text(
                  "11/10/2022",
                  style: GoogleFonts.archivo(color: grey),
                ),
                trailing:
                    Image.asset("assets/Images/remove_circle_outline.png")),
            ListTile(
                leading: Image.asset("assets/Images/img2.png"),
                title: Text("The Most Perfect Co...",
                    style: GoogleFonts.archivo(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                subtitle: Text(
                  "11/10/2022",
                  style: GoogleFonts.archivo(color: grey),
                ),
                trailing:
                    Image.asset("assets/Images/remove_circle_outline.png"))
          ],
          ListTile(
            leading: Icon(
              Icons.watch_later_outlined,
              color: black,
            ),
            title: Text("My Watchist",
                style: GoogleFonts.archivo(
                    color: black, fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: black,
            ),
            title: Text("Account",
                style: GoogleFonts.archivo(
                    color: black, fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Icon(
              Icons.help,
              color: black,
            ),
            title: Text("Help Center",
                style: GoogleFonts.archivo(
                    color: black, fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: Get.height * 0.08,
          ),
          Divider(
            color: grey,
            thickness: 2,
          ),
          Center(
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Sign Out",
                  style: GoogleFonts.archivo(
                      color: red, fontSize: 13, fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    ));
  }
}
