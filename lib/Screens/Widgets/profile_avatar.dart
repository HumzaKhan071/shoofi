import 'package:shoofi/Routes/routes.dart';

class ProfileAvatar extends StatelessWidget {
  final String? backgroundImagePath;
  final String title;
  final void Function() onTap;
  const ProfileAvatar({
    Key? key,
    this.backgroundImagePath,
    this.title = "Add Profile",
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
              radius: 50,
              backgroundColor: grey,
              backgroundImage: backgroundImagePath != null
                  ? AssetImage(backgroundImagePath!)
                  : null,
              child: backgroundImagePath == null
                  ? Icon(
                      Icons.add,
                      color: yellow,
                      size: 40,
                    )
                  : SizedBox()),
          SizedBox(height: 5),
          Text(
            title,
            style: GoogleFonts.archivo(
                color: black, fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
