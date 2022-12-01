import 'package:shoofi/Routes/routes.dart';

class HomeTrendingController extends GetxController
    with GetSingleTickerProviderStateMixin {
  int previousIndex = 0;
  late TabController tabController;
  Rx<String> dropdownvalue = 'EN'.obs;
  var items = ['EN', 'US', 'UR'];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
  }

}
