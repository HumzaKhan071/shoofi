import 'package:shoofi/Routes/routes.dart';

class PlayListController extends GetxController {
    List<String> watchListTiles = [
    "My List",
    "Watch Later",
    "Documentary",
    "Icoinc"
  ];
  Rx<bool> extended = false.obs;
  String selectedTile = "";
}
