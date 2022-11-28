import 'package:shoofi/Routes/routes.dart';

class HomeTrendingController extends GetxController {
  Rx<int> index = 0.obs;
  Rx<String> dropdownvalue = 'EN'.obs;
  var items = ['EN', 'US', 'UR'];
}
