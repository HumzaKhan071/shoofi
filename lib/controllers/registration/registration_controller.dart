import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:shoofi/Routes/routes.dart';

class RegistrationController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  File? imageFile;

  String dropdownvalue = 'Male';
  var gender = ['Male', 'Female'];

  dropDownValueChange(newvalue) {
    dropdownvalue = newvalue;
    update();
  }

  getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      update();
    }
  }
}
