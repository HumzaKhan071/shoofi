import 'package:shoofi/routes/routes.dart';

class FilterController extends GetxController {
  List<String> watchListTiles = [
    "My List",
    "Watch Later",
    "Documentary",
    "Iconic"
  ];
  Rx<String> dropdownvalue = 'English'.obs;
  var items = [
    'English',
    'Arabic',
  ];

  Rx<String> sortBydropdownvalue = "Relevance".obs;
  Rx<String> typedropdownvalue = "Channel".obs;
  Rx<String> uploaddropdownvalue = "Last Hour".obs;
  Rx<String> locationdropdownvalue = "UAE".obs;
  Rx<String> subcribersdropdownvalue = "10,000".obs;
  Rx<String> viewsdropdownvalue = "500K".obs;

  var sortbyItems = [
    "Relevance",
    "Newest",
    "Oldest",
  ];
  var typeItems = [
    "Channel",
    "Text1",
    "Text2",
  ];

  var uploadItems = [
    "Last Hour",
    "Last 30 mint",
    "Last 45 mint",
  ];
  var locationItems = [
    "UAE",
    "USA",
    "UK",
  ];
  var subrcibersItems = [
    "10,000",
    "11,000",
    "12,000",
  ];
  var viewsItems = [
    "500K",
    "600K",
    "700K",
  ];
  RxBool isDisplayFilter = false.obs;
}
