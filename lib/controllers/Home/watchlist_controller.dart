import 'package:shoofi/Routes/routes.dart';

class HomeWatchListControler extends GetxController {
  List<String> watchListTiles = [
    "My List",
    "Watch Later",
    "Documentary",
    "Icoinc"
  ];
  Rx<String> dropdownvalue = 'EN'.obs;
  var items = ['EN', 'US', 'UR'];
  Rx<bool> extended = false.obs;
  String selectedTile = "";
}
