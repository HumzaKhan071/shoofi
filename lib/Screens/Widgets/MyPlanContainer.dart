import 'package:shoofi/controllers/Plan/select_plan_controller.dart';

import '../../Routes/routes.dart';

class MyPlanContainer extends StatelessWidget {
  final String title;
  final String? price;
  final String description;

  final String totalScreens;
  final String perMonth;
  final int index;

  MyPlanContainer({
    Key? key,
    required this.title,
    this.price,
    required this.description,
    required this.totalScreens,
    required this.perMonth,
    required this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SelectPlanController controller = Get.find(tag: "selectPlan");
    return TextButton(
        style: TextButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
        ),
        onPressed: () {
          int lastSelected = controller.isSelected.indexOf(true);
          if (lastSelected == index) {
            controller.isSelected[index] = false;
            return;
          } else if (lastSelected != -1) {
            controller.isSelected[lastSelected] = false;
          }
          controller.isSelected[index] = true;
          Get.to(PaymentsScreen(fromManageSubscription: false));
        },
        child: Obx(
          () => Container(
            height: 140,
            padding: EdgeInsets.all(15),
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: controller.isSelected[index] ? yellow : Colors.white,
                border: Border.all(
                  color: controller.isSelected[index] ? yellow : yellow,
                  width: 1,
                )),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title,
                      style: TextStyle(
                          color: black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 5),
                  Text(totalScreens,
                      style: TextStyle(
                        color:
                            controller.isSelected[index] ? Colors.white : grey,
                        fontSize: 12,
                      )),
                  SizedBox(height: 5),
                  Text(perMonth,
                      style: TextStyle(
                          color: black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 10),
                  if (price != null)
                    Text(price!,
                        style: TextStyle(
                            color: controller.isSelected[index]
                                ? Colors.white
                                : black,
                            fontSize: 8,
                            fontWeight: FontWeight.bold)),
                  Text(description,
                      style: TextStyle(
                          color: controller.isSelected[index]
                              ? Colors.white
                              : black,
                          fontSize: 8,
                          fontWeight: FontWeight.bold)),
                ]),
          ),
        ));
  }
}
