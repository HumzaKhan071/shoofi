import 'package:shoofi/Routes/routes.dart';

languageDropDown(controller) {
  return Obx(() => DropdownButton(
      dropdownColor: yellow,
      menuMaxHeight: 120,
      isExpanded: true,
      borderRadius: BorderRadius.circular(21),
      underline: Container(),
      value: controller.dropdownvalue.value,
      style: TextStyle(color: black, fontSize: 15, fontWeight: FontWeight.bold),
      items: controller.items.map<DropdownMenuItem<Object>>((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (newValue) {
        controller.dropdownvalue.value = newValue as String;
      }));
}
