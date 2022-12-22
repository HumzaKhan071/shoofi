import 'dart:ui';

import 'package:shoofi/Routes/routes.dart';

class MyYoutubeContainer extends StatefulWidget {
  final String image;

  const MyYoutubeContainer({
    super.key,
    required this.image,
  });

  @override
  State<MyYoutubeContainer> createState() => _MyYoutubeContainerState();
}

class _MyYoutubeContainerState extends State<MyYoutubeContainer> {
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
