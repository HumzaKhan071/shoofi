import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Utils/image_constant.dart';
import 'package:shoofi/controllers/Home/trending_controller.dart';

class AllCategorySheet extends StatelessWidget {
  const AllCategorySheet({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> texts = [
      "Action",
      "Music",
      "Entertainment",
      "Sports",
      "Account",
    ];
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.white.withOpacity(0.8),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "All Categories",
                style: TextStyle(
                    color: black, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: 200,
                          itemBuilder: (context, index) {
                            return Center(child: Text("data"));
                          }),
                    ),
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(ImageConstant.circleCross)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
