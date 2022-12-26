import 'package:shoofi/controller/filter/filter_controller.dart';
import 'package:shoofi/routes/routes.dart';

class HomeSearchTvView extends StatelessWidget {
  const HomeSearchTvView({super.key});

  @override
  Widget build(BuildContext context) {
    FilterController controller = FilterController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 48,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    )),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          "|",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        // Obx(
                        //   () =>

                        IconButton(
                            onPressed: () {
                              controller.isDisplayFilter.value =
                                  !controller.isDisplayFilter.value;
                              // controller.press.value =
                              //     !controller.press.value;
                            },
                            icon: Icon(
                              Icons.filter_alt_outlined,
                              size: 18,
                            )),
                        // ),
                      ],
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 18,
                    ),
                    hintText: "Search or paste URL",
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            Obx(() {
              return controller.isDisplayFilter.value
                  ? SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            "Filters",
                            style: TextStyle(
                                color: black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Divider(
                            color: black.withOpacity(0.1),
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FilterRow(
                                controller: controller,
                                text: "Sort by",
                                dropDownValue: controller.sortBydropdownvalue,
                                items: controller.sortbyItems,
                              ),
                              FilterRow(
                                controller: controller,
                                text: "Type",
                                dropDownValue: controller.typedropdownvalue,
                                items: controller.typeItems,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FilterRow(
                                  items: controller.locationItems,
                                  dropDownValue:
                                      controller.locationdropdownvalue,
                                  controller: controller,
                                  text: "Select Location"),
                              FilterRow(
                                  items: controller.subrcibersItems,
                                  dropDownValue:
                                      controller.subcribersdropdownvalue,
                                  controller: controller,
                                  text: "No of Subscribers"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FilterRow(
                                controller: controller,
                                text: "Upload Date",
                                dropDownValue: controller.uploaddropdownvalue,
                                items: controller.uploadItems,
                              ),
                              FilterRow(
                                controller: controller,
                                text: "No of Views",
                                dropDownValue: controller.viewsdropdownvalue,
                                items: controller.viewsItems,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Divider(
                            color: black.withOpacity(0.1),
                            thickness: 1,
                          ),
                        ],
                      ),
                    )
                  : SizedBox();
            }),
            SizedBox(height: 40),
            FilterSearchContainer(
              text: "wilicumal",
            ),
            FilterSearchContainer(
              text: "wilicumal",
            ),
            FilterSearchContainer(
              text: "wilicumal",
            ),
            FilterSearchContainer(
              width: 288,
              text: "wilicumal wilicumal",
            ),
            FilterSearchContainer(
              text: "wilicumal",
            ),
            FilterSearchContainer(
              text: "wilicumal",
            ),
            FilterSearchContainer(
              text: "wilicumal",
            ),
            FilterSearchContainer(
              text: "wilicumal",
            ),
          ],
        ),
      ),
    );
  }
}

class FilterRow extends StatelessWidget {
  final String text;
  Rx<String> dropDownValue;
  final List<String> items;

  FilterRow({
    Key? key,
    required this.controller,
    required this.text,
    required this.items,
    required this.dropDownValue,
  }) : super(key: key);

  final FilterController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: black),
          ),
          SizedBox(
              height: 30,
              width: 120,
              child:
                  languageDropDown(dropdownvalue: dropDownValue, items: items))
        ],
      ),
    );
  }
}

class FilterSearchContainer extends StatelessWidget {
  final double width;
  final String text;
  const FilterSearchContainer({
    Key? key,
    this.width = 194,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Container(
          height: 38,
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: yellow,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.restart_alt_outlined,
                color: black.withOpacity(0.2),
              ),
              SizedBox(width: 5),
              Text(
                text,
                style: TextStyle(
                  color: black.withOpacity(0.5),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
