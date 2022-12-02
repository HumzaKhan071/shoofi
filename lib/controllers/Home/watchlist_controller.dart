import 'package:shoofi/Routes/routes.dart';

class HomeWatchListControler extends GetxController {
  List<String> watchListTiles = [
    "My List",
    "Watch Later",
    "Documentary",
    "Iconic"
  ];
  Rx<String> dropdownvalue = 'English'.obs;
  var items = ['English', 'Arabic',];
  String selectedTile = "";
}
