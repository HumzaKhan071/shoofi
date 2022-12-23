import 'package:shoofi/Routes/routes.dart';

class ProfileAvatar extends StatelessWidget {
  final String? backgroundImagePath;
  final String title;
  final double radius;
  final Color iconColor;
  final double iconSize;
  bool isEditShow;

  final void Function() onTap;
  ProfileAvatar({
    Key? key,
    this.backgroundImagePath,
    this.title = "Add Profile",
    required this.onTap,
    this.radius = 50,
    this.iconColor = yellow,
    this.iconSize = 40,
    this.isEditShow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                border: Border.all(
                    color: backgroundImagePath != null
                        ? yellow
                        : grey.withOpacity(0.5),
                    width: 2),
                shape: BoxShape.circle),
            child: CircleAvatar(
                radius: radius,
                backgroundColor: grey,
                backgroundImage: backgroundImagePath != null
                    ? AssetImage(backgroundImagePath!)
                    : null,
                child: backgroundImagePath == null
                    ? Icon(
                        Icons.add,
                        color: iconColor,
                        size: iconSize,
                      )
                    : SizedBox()),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              if (title != "Add Profile")
                Icon(
                  Icons.lock_outline,
                  color: black,
                  size: 13,
                ),
              SizedBox(width: 5),
              Text(
                title,
                style: TextStyle(
                    color: black, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          if (backgroundImagePath != null && isEditShow)
            IconButton(
                onPressed: () {
                  Get.to(() => EditProfile());
                },
                icon: Icon(
                  Icons.edit_outlined,
                  size: 15,
                ))
        ],
      ),
    );
  }
}
