import 'package:shoofi/Routes/routes.dart';

class ProfileAvatar extends StatelessWidget {
  final String? backgroundImagePath;
  final String title;
  final double radius;
  final Color iconColor;
  final double iconSize;
  final void Function() onTap;
  const ProfileAvatar({
    Key? key,
    this.backgroundImagePath,
    this.title = "Add Profile",
    required this.onTap,
    this.radius = 50,
    this.iconColor = yellow,  this.iconSize = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
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
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
                color: black, fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
