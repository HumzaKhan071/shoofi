import 'dart:ui';

import 'package:shoofi/Routes/routes.dart';

class MyCategoryContainer extends StatefulWidget {
  final String image;
  final String title;
  const MyCategoryContainer(
      {super.key, required this.image, required this.title});

  @override
  State<MyCategoryContainer> createState() => _MyCategoryContainerState();
}

class _MyCategoryContainerState extends State<MyCategoryContainer> {
  bool valueBox = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 79,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(widget.image), fit: BoxFit.cover)),
      child: Stack(
        children: [
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
              child: Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.bottomCenter,
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: grey,
                    fontSize: 12,
                     fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -5,
            right: -10,
            child: Checkbox(
                shape: CircleBorder(),
                fillColor: MaterialStateProperty.all(yellow),
                value: valueBox,
                onChanged: (valueBox) {
                  setState(() {
                    this.valueBox = valueBox!;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
