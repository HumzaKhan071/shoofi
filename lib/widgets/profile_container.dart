import '../../Routes/routes.dart';

class ProfileContainer extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;
  final double imageHeight;
  final double imageWidth;
  final double? radius;
  const ProfileContainer({
    Key? key,
    required this.containerHeight,
    required this.containerWidth,
    required this.imageHeight,
    required this.imageWidth,
    this.radius,
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
        radius: radius,
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
