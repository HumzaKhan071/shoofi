import '../../Routes/routes.dart';

class ProfileContainer extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;
  final double imageHeight;
  final double imageWidth;
  
  const ProfileContainer({
    Key? key, required this.containerHeight, required this.containerWidth, required this.imageHeight, required this.imageWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(100.0)),
        border: Border.all(
          color: Colors.yellow,
          width: 1.0,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset(
          ImageConstant.a,
          width: imageHeight,
          height: imageWidth,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
