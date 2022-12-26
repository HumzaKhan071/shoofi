import 'package:shoofi/routes/routes.dart';

languageDropDown({required Rx<String> dropdownvalue, required List<String> items}) {
  return Obx(() => DropdownButton(
      dropdownColor: yellow,
      menuMaxHeight: 120,
      isExpanded: true,
      borderRadius: BorderRadius.circular(21),
      underline: Container(),
      value: dropdownvalue.value,
      style: TextStyle(color: black, fontSize: 15, fontWeight: FontWeight.bold),
      items: items.map<DropdownMenuItem<Object>>((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (newValue) {
        dropdownvalue.value = newValue as String;
      }));
}
