import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoofi/Utils/country_json.dart';

class RegisterLocationController extends GetxController {
  TextEditingController editingController = TextEditingController();
  var items = [].obs;

  @override
  void onInit() {
    super.onInit();
    items.addAll(countryCodes);
  }

  filterSearchResults(query) {
    if (query.isNotEmpty) {
      List dummyListData = [];
      for (var item in countryCodes) {
        String itemData = item['name'];
        if (itemData.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      }

      items.clear();
      items.addAll(dummyListData);
      update();
    } else {
      items.clear();
      items.addAll(countryCodes);
      update();
    }
  }
}
