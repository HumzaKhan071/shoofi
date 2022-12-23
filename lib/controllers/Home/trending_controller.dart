import '../../Routes/routes.dart';

class HomeTrendingController extends GetxController
    with GetSingleTickerProviderStateMixin {
  int previousIndex = 0;
  late TabController tabController;
  Rx<String> dropdownvalue = 'English'.obs;
  var items = [
    'English',
    'Arabic',
  ];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
  }
}
