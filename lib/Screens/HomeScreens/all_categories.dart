import 'package:shoofi/Routes/routes.dart';
import 'package:shoofi/Utils/image_constant.dart';
import 'package:shoofi/controllers/Home/trending_controller.dart';

class AllCategorySheet extends StatelessWidget {
  final int previousIndex;
  const AllCategorySheet({super.key, required this.previousIndex});

  @override
  Widget build(BuildContext context) {
    HomeTrendingController controller = Get.find(tag: "trending");
    List<String> categories = [
      "Action",
      "Music",
      "Entertainment",
      "Sports",
      "Gaming",
      "Comedy",
      "Vlogs",
      "Motivation",
      "Relegious",
      "Health & Fitness",
      "Clothing",
      "Art",
      "Action",
      "Music",
      "Entertainment",
      "Sports",
      "Gaming",
      "Comedy",
      "Vlogs",
      "Motivation",
      "Relegious",
      "Health & Fitness",
      "Clothing",
      "Art",
    ];
    return WillPopScope(
      onWillPop: () async {
        controller.tabController.index = previousIndex;
        return true;
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Container(
                color: Colors.white,
                child: ListView.separated(
                  padding: EdgeInsets.only(top: 100),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Center(
                        child: Text(categories[index],
                            style: TextStyle(color: black, fontSize: 16)));
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white.withOpacity(0.9),
                  child: InkWell(
                      onTap: () {
                        controller.tabController.index = previousIndex;
                        Get.back();
                      },
                      child: Image.asset(ImageConstant.circleCross)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.white,
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "All Categories",
                    style: TextStyle(
                        color: black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          )),
    );
  }
}
