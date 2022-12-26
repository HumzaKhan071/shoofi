import 'package:flutter/material.dart';
import 'package:shoofi/Routes/routes.dart';

class AllCategoriesTvView extends StatelessWidget {
  const AllCategoriesTvView({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      body: Column(
        children: [
          GridView.count(
            crossAxisCount: 6,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            shrinkWrap: true,
            childAspectRatio: 3.5,
            physics: BouncingScrollPhysics(),
            children: List.generate(
                categories.length,
                (index) => MyTvCategoryContainer(
                      categories: categories[index],
                    )),
          ),
          SizedBox(height: 30),
          MyButtonContainer(
            conColor: yellow,
            text: "Confirm",
            width: 200,
          ),
        ],
      ),
    );
  }
}

class MyTvCategoryContainer extends StatelessWidget {
  final String categories;
  MyTvCategoryContainer({
    Key? key,
    required this.categories,
  }) : super(key: key);

  RxBool valuebox = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          decoration: BoxDecoration(
            border: Border.all(
                width: 1,
                color: valuebox.value == true ? yellow : Colors.black),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextButton(
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent)),
            onPressed: () {
              valuebox.value = !valuebox.value;
            },
            child: Text(
              categories,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ));
  }
}
