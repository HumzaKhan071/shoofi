import 'package:shoofi/routes/routes.dart';

class SelectPlanController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  RxList<bool> isSelected = [false, false, false, false].obs;
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }
}
